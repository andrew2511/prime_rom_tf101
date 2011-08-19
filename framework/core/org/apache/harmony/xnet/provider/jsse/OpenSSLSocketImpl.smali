.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
.super Ljavax/net/ssl/SSLSocket;
.source "OpenSSLSocketImpl.java"

# interfaces
.implements Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$LoggerHolder;
    }
.end annotation


# instance fields
.field private autoClose:Z

.field private enabledCipherSuites:[Ljava/lang/String;

.field private enabledCompressionMethods:[Ljava/lang/String;

.field private enabledProtocols:[Ljava/lang/String;

.field private final fd:Ljava/io/FileDescriptor;

.field private final guard:Ldalvik/system/CloseGuard;

.field private handshakeCompleted:Z

.field private final handshakeLock:Ljava/lang/Object;

.field private handshakeStarted:Z

.field private handshakeTimeoutMilliseconds:I

.field private hostname:Ljava/lang/String;

.field private is:Ljava/io/InputStream;

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private os:Ljava/io/OutputStream;

.field private final readLock:Ljava/lang/Object;

.field private final socket:Ljava/net/Socket;

.field private sslNativePointer:I

.field private sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

.field private sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

.field private timeoutMilliseconds:I

.field private useSessionTickets:Z

.field private wrappedHost:Ljava/lang/String;

.field private wrappedPort:I

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 8
    .parameter "host"
    .parameter "port"
    .parameter "clientAddress"
    .parameter "clientPort"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 82
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 83
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 91
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 101
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 180
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 181
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 182
    invoke-direct {p0, p5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 183
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 6
    .parameter "host"
    .parameter "port"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;I)V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 82
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 83
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 91
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 101
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 149
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 150
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 151
    invoke-direct {p0, p3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 152
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 8
    .parameter "address"
    .parameter "port"
    .parameter "clientAddress"
    .parameter "clientPort"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 82
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 83
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 91
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 101
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 196
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 197
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 198
    invoke-direct {p0, p5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 199
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 6
    .parameter "address"
    .parameter "port"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;I)V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 82
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 83
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 91
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 101
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 163
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 164
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 165
    invoke-direct {p0, p3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 166
    return-void
.end method

.method protected constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZLorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 8
    .parameter "socket"
    .parameter "host"
    .parameter "port"
    .parameter "autoClose"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 82
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 83
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 91
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 101
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 210
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 211
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 212
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    .line 213
    iput p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedPort:I

    .line 214
    iput-boolean p4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    .line 215
    invoke-direct {p0, p5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 220
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 4
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 82
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 83
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 91
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 101
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 118
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 119
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 120
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 121
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .parameter "sslParameters"
    .parameter "enabledProtocols"
    .parameter "enabledCipherSuites"
    .parameter "enabledCompressionMethods"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 82
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 83
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 91
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 101
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 135
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 136
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V
    .registers 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/io/FileDescriptor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    return-object v0
.end method

.method private checkOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 334
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_e
    return-void
.end method

.method private static createCertChain([[B)[Ljava/security/cert/X509Certificate;
    .registers 7
    .parameter "certificatesBytes"

    .prologue
    const/4 v5, 0x0

    .line 553
    if-nez p0, :cond_5

    move-object v3, v5

    .line 564
    :goto_4
    return-object v3

    .line 556
    :cond_5
    array-length v3, p0

    new-array v0, v3, [Ljava/security/cert/X509Certificate;

    .line 557
    .local v0, certificates:[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    array-length v3, p0

    if-ge v2, v3, :cond_1c

    .line 559
    :try_start_c
    new-instance v3, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    aput-object v3, v0, v2
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_18

    .line 557
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 560
    :catch_18
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/io/IOException;
    move-object v3, v5

    .line 561
    goto :goto_4

    .end local v1           #e:Ljava/io/IOException;
    :cond_1c
    move-object v3, v0

    .line 564
    goto :goto_4
.end method

.method private free()V
    .registers 2

    .prologue
    .line 1271
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    if-nez v0, :cond_5

    .line 1277
    :goto_4
    return-void

    .line 1274
    :cond_5
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_free(I)V

    .line 1275
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    .line 1276
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    goto :goto_4
.end method

.method private getCachedClientSession(Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    .registers 20
    .parameter "sessionContext"

    .prologue
    .line 253
    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v16

    if-eqz v16, :cond_1a

    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1a

    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_1d

    .line 256
    :cond_1a
    const/16 v16, 0x0

    .line 301
    :goto_1c
    return-object v16

    .line 258
    :cond_1d
    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v16

    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->getSession(Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v15

    check-cast v15, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    .line 261
    .local v15, session:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    if-nez v15, :cond_3a

    .line 262
    const/16 v16, 0x0

    goto :goto_1c

    .line 265
    :cond_3a
    invoke-virtual {v15}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getProtocol()Ljava/lang/String;

    move-result-object v13

    .line 266
    .local v13, protocol:Ljava/lang/String;
    const/4 v14, 0x0

    .line 267
    .local v14, protocolFound:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    move-object v3, v0

    .local v3, arr$:[Ljava/lang/String;
    array-length v12, v3

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_46
    if-ge v11, v12, :cond_51

    aget-object v10, v3, v11

    .line 268
    .local v10, enabledProtocol:Ljava/lang/String;
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_56

    .line 269
    const/4 v14, 0x1

    .line 273
    .end local v10           #enabledProtocol:Ljava/lang/String;
    :cond_51
    if-nez v14, :cond_59

    .line 274
    const/16 v16, 0x0

    goto :goto_1c

    .line 267
    .restart local v10       #enabledProtocol:Ljava/lang/String;
    :cond_56
    add-int/lit8 v11, v11, 0x1

    goto :goto_46

    .line 277
    .end local v10           #enabledProtocol:Ljava/lang/String;
    :cond_59
    invoke-virtual {v15}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getCipherSuite()Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, cipherSuite:Ljava/lang/String;
    const/4 v5, 0x0

    .line 279
    .local v5, cipherSuiteFound:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    move-object v3, v0

    array-length v12, v3

    const/4 v11, 0x0

    :goto_65
    if-ge v11, v12, :cond_70

    aget-object v8, v3, v11

    .line 280
    .local v8, enabledCipherSuite:Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_75

    .line 281
    const/4 v5, 0x1

    .line 285
    .end local v8           #enabledCipherSuite:Ljava/lang/String;
    :cond_70
    if-nez v5, :cond_78

    .line 286
    const/16 v16, 0x0

    goto :goto_1c

    .line 279
    .restart local v8       #enabledCipherSuite:Ljava/lang/String;
    :cond_75
    add-int/lit8 v11, v11, 0x1

    goto :goto_65

    .line 289
    .end local v8           #enabledCipherSuite:Ljava/lang/String;
    :cond_78
    invoke-virtual {v15}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getCompressionMethod()Ljava/lang/String;

    move-result-object v6

    .line 290
    .local v6, compressionMethod:Ljava/lang/String;
    const/4 v7, 0x0

    .line 291
    .local v7, compressionMethodFound:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    move-object v3, v0

    array-length v12, v3

    const/4 v11, 0x0

    :goto_84
    if-ge v11, v12, :cond_8f

    aget-object v9, v3, v11

    .line 292
    .local v9, enabledCompressionMethod:Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_94

    .line 293
    const/4 v7, 0x1

    .line 297
    .end local v9           #enabledCompressionMethod:Ljava/lang/String;
    :cond_8f
    if-nez v7, :cond_97

    .line 298
    const/16 v16, 0x0

    goto :goto_1c

    .line 291
    .restart local v9       #enabledCompressionMethod:Ljava/lang/String;
    :cond_94
    add-int/lit8 v11, v11, 0x1

    goto :goto_84

    .end local v9           #enabledCompressionMethod:Ljava/lang/String;
    :cond_97
    move-object/from16 v16, v15

    .line 301
    goto :goto_1c
.end method

.method private init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 5
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCompressionMethods()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method private init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .parameter "sslParameters"
    .parameter "enabledProtocols"
    .parameter "enabledCipherSuites"
    .parameter "enabledCompressionMethods"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 242
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    .line 243
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 244
    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    .line 245
    return-void
.end method

.method private notifyHandshakeCompletedListeners()V
    .registers 7

    .prologue
    .line 640
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_36

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_36

    .line 642
    new-instance v1, Ljavax/net/ssl/HandshakeCompletedEvent;

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-direct {v1, p0, v5}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    .line 644
    .local v1, event:Ljavax/net/ssl/HandshakeCompletedEvent;
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HandshakeCompletedListener;

    .line 646
    .local v3, listener:Ljavax/net/ssl/HandshakeCompletedListener;
    :try_start_25
    invoke-interface {v3, v1}, Ljavax/net/ssl/HandshakeCompletedListener;->handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_19

    .line 647
    :catch_29
    move-exception v0

    .line 653
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 654
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_19

    .line 658
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #event:Ljavax/net/ssl/HandshakeCompletedEvent;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Ljavax/net/ssl/HandshakeCompletedListener;
    .end local v4           #thread:Ljava/lang/Thread;
    :cond_36
    return-void
.end method

.method private setCertificate(Ljava/lang/String;)V
    .registers 7
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 568
    if-nez p1, :cond_3

    .line 583
    :goto_2
    return-void

    .line 572
    :cond_3
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v4

    invoke-interface {v4, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v2

    .line 573
    .local v2, privateKey:Ljava/security/PrivateKey;
    invoke-interface {v2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    .line 574
    .local v3, privateKeyBytes:[B
    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v4, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_use_PrivateKey(I[B)V

    .line 576
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v4

    invoke-interface {v4, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 577
    .local v1, certificates:[Ljava/security/cert/X509Certificate;
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->encodeCertificates([Ljava/security/cert/Certificate;)[[B

    move-result-object v0

    .line 578
    .local v0, certificateBytes:[[B
    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_use_certificate(I[[B)V

    .line 582
    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v4}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_check_private_key(I)V

    goto :goto_2
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 884
    if-nez p1, :cond_a

    .line 885
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_15

    .line 888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    .line 890
    :cond_15
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    return-void
.end method

.method public clientCertificateRequested([B[[B)V
    .registers 8
    .parameter "keyTypeBytes"
    .parameter "asn1DerEncodedPrincipals"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 592
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/String;

    .line 593
    .local v2, keyTypes:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    array-length v3, p1

    if-ge v0, v3, :cond_12

    .line 594
    aget-byte v3, p1, v0

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getClientKeyType(B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 598
    :cond_12
    if-nez p2, :cond_23

    .line 599
    const/4 v1, 0x0

    .line 606
    .local v1, issuers:[Ljavax/security/auth/x500/X500Principal;
    :cond_15
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v3

    invoke-interface {v3, v2, v1, p0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setCertificate(Ljava/lang/String;)V

    .line 607
    return-void

    .line 601
    .end local v1           #issuers:[Ljavax/security/auth/x500/X500Principal;
    :cond_23
    array-length v3, p2

    new-array v1, v3, [Ljavax/security/auth/x500/X500Principal;

    .line 602
    .restart local v1       #issuers:[Ljavax/security/auth/x500/X500Principal;
    const/4 v0, 0x0

    :goto_27
    array-length v3, p2

    if-ge v0, v3, :cond_15

    .line 603
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    aget-object v4, p2, v0

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v3, v1, v0

    .line 602
    add-int/lit8 v0, v0, 0x1

    goto :goto_27
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1211
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1212
    :try_start_3
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    if-nez v1, :cond_36

    .line 1214
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 1216
    monitor-enter p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_33

    .line 1217
    :try_start_b
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V

    .line 1219
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eq v1, p0, :cond_26

    .line 1220
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v1, :cond_23

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 1224
    :cond_23
    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_30

    .line 1226
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_33

    .line 1268
    :goto_25
    return-void

    .line 1222
    :cond_26
    :try_start_26
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    goto :goto_23

    .line 1224
    :catchall_30
    move-exception v1

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_30

    :try_start_32
    throw v1

    .line 1228
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_33

    throw v1

    :cond_36
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_33

    .line 1230
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_interrupt(I)V

    .line 1232
    monitor-enter p0

    .line 1233
    :try_start_3d
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_71

    .line 1234
    :try_start_40
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_81

    .line 1238
    :try_start_43
    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    if-eqz v2, :cond_55

    .line 1239
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v2

    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 1240
    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v2, v3, p0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_shutdown(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;)V
    :try_end_55
    .catchall {:try_start_43 .. :try_end_55} :catchall_7e
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_55} :catch_84

    .line 1256
    :cond_55
    :goto_55
    :try_start_55
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V

    .line 1258
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eq v2, p0, :cond_74

    .line 1259
    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6d

    .line 1260
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 1265
    :cond_6d
    :goto_6d
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_55 .. :try_end_6e} :catchall_7e

    .line 1266
    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_81

    .line 1267
    :try_start_6f
    monitor-exit p0

    goto :goto_25

    :catchall_71
    move-exception v0

    monitor-exit p0
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_71

    throw v0

    .line 1262
    :cond_74
    :try_start_74
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6d

    .line 1263
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    goto :goto_6d

    .line 1265
    :catchall_7e
    move-exception v2

    monitor-exit v1
    :try_end_80
    .catchall {:try_start_74 .. :try_end_80} :catchall_7e

    :try_start_80
    throw v2

    .line 1266
    :catchall_81
    move-exception v1

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_81

    :try_start_83
    throw v1
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_71

    .line 1242
    :catch_84
    move-exception v2

    goto :goto_55
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1297
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 1298
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 1300
    :cond_9
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 1302
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1304
    return-void

    .line 1302
    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getEnableSessionCreation()Z
    .registers 2

    .prologue
    .line 921
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 955
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getEnabledCompressionMethods()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1024
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 991
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getHostname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1073
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 707
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V

    .line 708
    monitor-enter p0

    .line 709
    :try_start_4
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->is:Ljava/io/InputStream;

    if-nez v0, :cond_f

    .line 710
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->is:Ljava/io/InputStream;

    .line 713
    :cond_f
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->is:Ljava/io/InputStream;

    monitor-exit p0

    return-object v0

    .line 714
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public getNeedClientAuth()Z
    .registers 2

    .prologue
    .line 1121
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V

    .line 728
    monitor-enter p0

    .line 729
    :try_start_4
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->os:Ljava/io/OutputStream;

    if-nez v0, :cond_f

    .line 730
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->os:Ljava/io/OutputStream;

    .line 733
    :cond_f
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->os:Ljava/io/OutputStream;

    monitor-exit p0

    return-object v0

    .line 734
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .registers 3

    .prologue
    .line 864
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    if-nez v1, :cond_8

    .line 866
    const/4 v1, 0x1

    :try_start_5
    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->startHandshake(Z)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_b

    .line 873
    :cond_8
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    :goto_a
    return-object v1

    .line 867
    :catch_b
    move-exception v0

    .line 870
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->NULL_SESSION:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto :goto_a
.end method

.method public getSoTimeout()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1184
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    return v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 944
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCompressionMethods()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1014
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedCompressionMethods()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 980
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .registers 2

    .prologue
    .line 1082
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getUseSessionTickets()Z
    .registers 2

    .prologue
    .line 1055
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->useSessionTickets:Z

    return v0
.end method

.method public getWantClientAuth()Z
    .registers 2

    .prologue
    .line 1110
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public handshakeCompleted()V
    .registers 3

    .prologue
    .line 614
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 622
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    if-nez v1, :cond_8

    .line 637
    :goto_7
    return-void

    .line 628
    :cond_8
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->resetId()V

    .line 629
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v1

    move-object v0, v1

    .line 633
    .local v0, sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
    :goto_1c
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 636
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->notifyHandshakeCompletedListeners()V

    goto :goto_7

    .line 629
    .end local v0           #sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
    :cond_25
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v1

    move-object v0, v1

    goto :goto_1c
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 900
    if-nez p1, :cond_a

    .line 901
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_16

    .line 904
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :cond_16
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 908
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 911
    :cond_26
    return-void
.end method

.method public sendUrgentData(I)V
    .registers 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1155
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Method sendUrgentData() is not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnableSessionCreation(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 934
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 935
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .parameter "suites"

    .prologue
    .line 970
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 971
    return-void
.end method

.method public setEnabledCompressionMethods([Ljava/lang/String;)V
    .registers 3
    .parameter "methods"

    .prologue
    .line 1037
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledCompressionMethods([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    .line 1038
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .parameter "protocols"

    .prologue
    .line 1005
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    .line 1006
    return-void
.end method

.method public setHandshakeTimeout(I)V
    .registers 2
    .parameter "timeoutMilliseconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1195
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 1196
    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .registers 2
    .parameter "hostname"

    .prologue
    .line 1064
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->hostname:Ljava/lang/String;

    .line 1065
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .registers 3
    .parameter "need"

    .prologue
    .line 1133
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 1134
    return-void
.end method

.method public setOOBInline(Z)V
    .registers 4
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1164
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Methods sendUrgentData, setOOBInline are not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSoTimeout(I)V
    .registers 2
    .parameter "timeoutMilliseconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1178
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 1179
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 1180
    return-void
.end method

.method public setUseClientMode(Z)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 1095
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    if-eqz v0, :cond_c

    .line 1096
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not change the mode after the initial handshake has begun."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1099
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setUseClientMode(Z)V

    .line 1100
    return-void
.end method

.method public setUseSessionTickets(Z)V
    .registers 2
    .parameter "useSessionTickets"

    .prologue
    .line 1046
    iput-boolean p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->useSessionTickets:Z

    .line 1047
    return-void
.end method

.method public setWantClientAuth(Z)V
    .registers 3
    .parameter "want"

    .prologue
    .line 1147
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 1148
    return-void
.end method

.method public shutdownInput()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 744
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public shutdownOutput()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 754
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startHandshake()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->startHandshake(Z)V

    .line 324
    return-void
.end method

.method public declared-synchronized startHandshake(Z)V
    .registers 36
    .parameter "full"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    move-object v5, v0

    monitor-enter v5
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_8d

    .line 344
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V

    .line 345
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    move v6, v0

    if-nez v6, :cond_87

    .line 346
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 350
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_8a

    .line 353
    const/16 v28, 0x400

    .line 354
    .local v28, seedLengthInBytes:I
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandomMember()Ljava/security/SecureRandom;

    move-result-object v27

    .line 355
    .local v27, secureRandom:Ljava/security/SecureRandom;
    if-nez v27, :cond_90

    .line 356
    const-string v5, "/dev/urandom"

    const-wide/16 v9, 0x400

    invoke-static {v5, v9, v10}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RAND_load_file(Ljava/lang/String;J)I

    .line 361
    :goto_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v14

    .line 363
    .local v14, client:Z
    if-eqz v14, :cond_9d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v5

    iget v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sslCtxNativePointer:I

    move/from16 v31, v5

    .line 367
    .local v31, sslCtxNativePointer:I
    :goto_44
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I
    :try_end_4a
    .catchall {:try_start_1a .. :try_end_4a} :catchall_8d

    .line 368
    const/16 v19, 0x1

    .line 370
    .local v19, exception:Z
    :try_start_4c
    invoke-static/range {v31 .. v31}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_new(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    move-object v5, v0

    const-string v6, "close"

    invoke-virtual {v5, v6}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 375
    if-nez v14, :cond_fb

    .line 376
    new-instance v24, Ljava/util/HashSet;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    .line 377
    .local v24, keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    move-object v12, v0

    .local v12, arr$:[Ljava/lang/String;
    move-object v0, v12

    array-length v0, v0

    move/from16 v25, v0

    .local v25, len$:I
    const/16 v20, 0x0

    .local v20, i$:I
    :goto_71
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_c4

    aget-object v18, v12, v20

    .line 378
    .local v18, enabledCipherSuite:Ljava/lang/String;
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_81
    .catchall {:try_start_4c .. :try_end_81} :catchall_bd

    move-result v5

    if-eqz v5, :cond_ab

    .line 377
    :cond_84
    :goto_84
    add-int/lit8 v20, v20, 0x1

    goto :goto_71

    .line 348
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v14           #client:Z
    .end local v18           #enabledCipherSuite:Ljava/lang/String;
    .end local v19           #exception:Z
    .end local v20           #i$:I
    .end local v24           #keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v25           #len$:I
    .end local v27           #secureRandom:Ljava/security/SecureRandom;
    .end local v28           #seedLengthInBytes:I
    .end local v31           #sslCtxNativePointer:I
    :cond_87
    :try_start_87
    monitor-exit v5
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_8a

    .line 546
    .end local p1
    :cond_88
    :goto_88
    monitor-exit p0

    return-void

    .line 350
    .restart local p1
    :catchall_8a
    move-exception v6

    :try_start_8b
    monitor-exit v5
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    :try_start_8c
    throw v6
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8d

    .line 343
    .end local p1
    :catchall_8d
    move-exception v5

    monitor-exit p0

    throw v5

    .line 358
    .restart local v27       #secureRandom:Ljava/security/SecureRandom;
    .restart local v28       #seedLengthInBytes:I
    .restart local p1
    :cond_90
    const/16 v5, 0x400

    :try_start_92
    move-object/from16 v0, v27

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v5

    invoke-static {v5}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RAND_seed([B)V

    goto :goto_2c

    .line 363
    .restart local v14       #client:Z
    :cond_9d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v5

    iget v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->sslCtxNativePointer:I
    :try_end_a8
    .catchall {:try_start_92 .. :try_end_a8} :catchall_8d

    move/from16 v31, v5

    goto :goto_44

    .line 381
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v18       #enabledCipherSuite:Ljava/lang/String;
    .restart local v19       #exception:Z
    .restart local v20       #i$:I
    .restart local v24       #keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v25       #len$:I
    .restart local v31       #sslCtxNativePointer:I
    :cond_ab
    :try_start_ab
    invoke-static/range {v18 .. v18}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getByName(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getServerKeyType()Ljava/lang/String;

    move-result-object v23

    .line 382
    .local v23, keyType:Ljava/lang/String;
    if-eqz v23, :cond_84

    .line 383
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_bc
    .catchall {:try_start_ab .. :try_end_bc} :catchall_bd

    goto :goto_84

    .line 542
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v18           #enabledCipherSuite:Ljava/lang/String;
    .end local v20           #i$:I
    .end local v23           #keyType:Ljava/lang/String;
    .end local v24           #keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v25           #len$:I
    .end local p1
    :catchall_bd
    move-exception v5

    if-eqz v19, :cond_c3

    .line 543
    :try_start_c0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->close()V

    :cond_c3
    throw v5
    :try_end_c4
    .catchall {:try_start_c0 .. :try_end_c4} :catchall_8d

    .line 386
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v20       #i$:I
    .restart local v24       #keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v25       #len$:I
    .restart local p1
    :cond_c4
    :try_start_c4
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_c8
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_fb

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;
    :try_end_d4
    .catchall {:try_start_c4 .. :try_end_d4} :catchall_bd

    .line 388
    .restart local v23       #keyType:Ljava/lang/String;
    :try_start_d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v6

    move-object/from16 v3, p0

    invoke-interface {v0, v1, v2, v3}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setCertificate(Ljava/lang/String;)V
    :try_end_ee
    .catchall {:try_start_d4 .. :try_end_ee} :catchall_bd
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_d4 .. :try_end_ee} :catch_ef

    goto :goto_c8

    .line 391
    :catch_ef
    move-exception v5

    move-object/from16 v16, v5

    .line 392
    .local v16, e:Ljava/security/cert/CertificateEncodingException;
    :try_start_f2
    new-instance v5, Ljava/io/IOException;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 397
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v16           #e:Ljava/security/cert/CertificateEncodingException;
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v23           #keyType:Ljava/lang/String;
    .end local v24           #keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v25           #len$:I
    :cond_fb
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->setEnabledProtocols(I[Ljava/lang/String;)V

    .line 398
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->setEnabledCipherSuites(I[Ljava/lang/String;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    move-object v5, v0

    array-length v5, v5

    if-eqz v5, :cond_12a

    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->setEnabledCompressionMethods(I[Ljava/lang/String;)V

    .line 403
    :cond_12a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->useSessionTickets:Z

    move v5, v0

    if-eqz v5, :cond_13b

    .line 404
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move v5, v0

    sget-wide v9, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_OP_NO_TICKET:J

    invoke-static {v5, v9, v10}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_clear_options(IJ)J

    .line 406
    :cond_13b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->hostname:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_14f

    .line 407
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->hostname:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_tlsext_host_name(ILjava/lang/String;)V

    .line 410
    :cond_14f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v17

    .line 411
    .local v17, enableSessionCreation:Z
    if-nez v17, :cond_165

    .line 412
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move v5, v0

    move v0, v5

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_session_creation_enabled(IZ)V

    .line 418
    :cond_165
    if-eqz v14, :cond_230

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v15

    .line 421
    .local v15, clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    move-object v11, v15

    .line 422
    .local v11, sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getCachedClientSession(Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-result-object v29

    .line 423
    .local v29, session:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    if-eqz v29, :cond_187

    .line 424
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move v5, v0

    move-object/from16 v0, v29

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    move v6, v0

    invoke-static {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_session(II)V

    .line 433
    .end local v15           #clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    :cond_187
    :goto_187
    if-eqz v14, :cond_23d

    .line 469
    :cond_189
    :goto_189
    if-eqz v14, :cond_197

    if-eqz p1, :cond_197

    .line 471
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move v5, v0

    sget-wide v9, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_MODE_HANDSHAKE_CUTTHROUGH:J

    invoke-static {v5, v9, v10}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_clear_mode(IJ)J

    .line 477
    :cond_197
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getSoTimeout()I

    move-result v26

    .line 478
    .local v26, savedTimeoutMilliseconds:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    move v5, v0

    if-ltz v5, :cond_1ad

    .line 479
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setSoTimeout(I)V
    :try_end_1ad
    .catchall {:try_start_f2 .. :try_end_1ad} :catchall_bd

    .line 485
    :cond_1ad
    :try_start_1ad
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->fd:Ljava/io/FileDescriptor;

    move-object v6, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getSoTimeout()I

    move-result v7

    move v0, v5

    move-object v1, v6

    move-object/from16 v2, p0

    move v3, v7

    move v4, v14

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_do_handshake(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;IZ)I
    :try_end_1c4
    .catchall {:try_start_1ad .. :try_end_1c4} :catchall_bd
    .catch Ljava/security/cert/CertificateException; {:try_start_1ad .. :try_end_1c4} :catch_2a0

    move-result v6

    .line 492
    .local v6, sslSessionNativePointer:I
    :try_start_1c5
    invoke-static {v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_session_id(I)[B

    move-result-object v30

    .line 493
    .local v30, sessionId:[B
    move-object v0, v11

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->getSession([B)Ljavax/net/ssl/SSLSession;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object v5, v0

    if-eqz v5, :cond_2b7

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object v5, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v5, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->lastAccessedTime:J

    .line 496
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$LoggerHolder;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reused cached session for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 498
    invoke-static {v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_free(I)V

    .line 529
    .end local v6           #sslSessionNativePointer:I
    :goto_20f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    move v5, v0

    if-ltz v5, :cond_21d

    .line 530
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setSoTimeout(I)V

    .line 535
    :cond_21d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    move v5, v0

    if-eqz v5, :cond_227

    .line 536
    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->notifyHandshakeCompletedListeners()V
    :try_end_227
    .catchall {:try_start_1c5 .. :try_end_227} :catchall_bd

    .line 539
    :cond_227
    const/16 v19, 0x0

    .line 542
    if-eqz v19, :cond_88

    .line 543
    :try_start_22b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->close()V
    :try_end_22e
    .catchall {:try_start_22b .. :try_end_22e} :catchall_8d

    goto/16 :goto_88

    .line 428
    .end local v11           #sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
    .end local v26           #savedTimeoutMilliseconds:I
    .end local v29           #session:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    .end local v30           #sessionId:[B
    .restart local p1
    :cond_230
    :try_start_230
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v11

    .line 429
    .restart local v11       #sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
    const/16 v29, 0x0

    .restart local v29       #session:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    goto/16 :goto_187

    .line 438
    :cond_23d
    const/4 v13, 0x0

    .line 439
    .local v13, certRequested:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v5

    if-eqz v5, :cond_27b

    .line 440
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move v5, v0

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_verify(II)V

    .line 443
    const/4 v13, 0x1

    .line 454
    :goto_253
    if-eqz v13, :cond_189

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v32

    .line 456
    .local v32, trustManager:Ljavax/net/ssl/X509TrustManager;
    invoke-interface/range {v32 .. v32}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v21

    .line 457
    .local v21, issuers:[Ljava/security/cert/X509Certificate;
    if-eqz v21, :cond_189

    move-object/from16 v0, v21

    array-length v0, v0

    move v5, v0
    :try_end_268
    .catchall {:try_start_230 .. :try_end_268} :catchall_bd

    if-eqz v5, :cond_189

    .line 460
    :try_start_26a
    invoke-static/range {v21 .. v21}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->encodeIssuerX509Principals([Ljava/security/cert/X509Certificate;)[[B
    :try_end_26d
    .catchall {:try_start_26a .. :try_end_26d} :catchall_bd
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_26a .. :try_end_26d} :catch_293

    move-result-object v22

    .line 464
    .local v22, issuersBytes:[[B
    :try_start_26e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_client_CA_list(I[[B)V

    goto/16 :goto_189

    .line 445
    .end local v21           #issuers:[Ljava/security/cert/X509Certificate;
    .end local v22           #issuersBytes:[[B
    .end local v32           #trustManager:Ljavax/net/ssl/X509TrustManager;
    :cond_27b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v5

    if-eqz v5, :cond_291

    .line 446
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_verify(II)V

    .line 448
    const/4 v13, 0x1

    goto :goto_253

    .line 451
    :cond_291
    const/4 v13, 0x0

    goto :goto_253

    .line 461
    .restart local v21       #issuers:[Ljava/security/cert/X509Certificate;
    .restart local v32       #trustManager:Ljavax/net/ssl/X509TrustManager;
    :catch_293
    move-exception v16

    .line 462
    .restart local v16       #e:Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Problem encoding principals"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 487
    .end local v13           #certRequested:Z
    .end local v16           #e:Ljava/security/cert/CertificateEncodingException;
    .end local v21           #issuers:[Ljava/security/cert/X509Certificate;
    .end local v32           #trustManager:Ljavax/net/ssl/X509TrustManager;
    .restart local v26       #savedTimeoutMilliseconds:I
    :catch_2a0
    move-exception v5

    move-object/from16 v16, v5

    .line 488
    .local v16, e:Ljava/security/cert/CertificateException;
    new-instance v33, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v33

    move-object v1, v5

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 489
    .local v33, wrapper:Ljavax/net/ssl/SSLHandshakeException;
    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 490
    throw v33

    .line 500
    .end local v16           #e:Ljava/security/cert/CertificateException;
    .end local v33           #wrapper:Ljavax/net/ssl/SSLHandshakeException;
    .end local p1
    .restart local v6       #sslSessionNativePointer:I
    .restart local v30       #sessionId:[B
    :cond_2b7
    if-nez v17, :cond_2c1

    .line 502
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "SSL Session may not be created"

    .end local v6           #sslSessionNativePointer:I
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 504
    .restart local v6       #sslSessionNativePointer:I
    :cond_2c1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move v5, v0

    invoke-static {v5}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_get_certificate(I)[[B

    move-result-object v5

    invoke-static {v5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->createCertChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 506
    .local v7, localCertificates:[Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move v5, v0

    invoke-static {v5}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_get_peer_cert_chain(I)[[B

    move-result-object v5

    invoke-static {v5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->createCertChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object v8

    .line 508
    .local v8, peerCertificates:[Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    move-object v5, v0

    if-nez v5, :cond_32f

    .line 509
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v9

    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v10

    invoke-direct/range {v5 .. v11}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;-><init>(I[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    .line 520
    :goto_2f8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    move v5, v0

    if-eqz v5, :cond_307

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object v5, v0

    invoke-virtual {v11, v5}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 523
    :cond_307
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$LoggerHolder;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #sslSessionNativePointer:I
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Created new session for "

    .end local v7           #localCertificates:[Ljava/security/cert/X509Certificate;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_20f

    .line 514
    .restart local v6       #sslSessionNativePointer:I
    .restart local v7       #localCertificates:[Ljava/security/cert/X509Certificate;
    :cond_32f
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedPort:I

    move v10, v0

    invoke-direct/range {v5 .. v11}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;-><init>(I[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    :try_end_343
    .catchall {:try_start_26e .. :try_end_343} :catchall_bd

    goto :goto_2f8
.end method

.method public verifyCertificateChain([[BLjava/lang/String;)V
    .registers 10
    .parameter "bytes"
    .parameter "authMethod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 672
    if-eqz p1, :cond_5

    :try_start_2
    array-length v5, p1

    if-nez v5, :cond_10

    .line 673
    :cond_5
    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string v6, "Peer sent no certificate"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_d
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_d} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_4a

    .line 689
    :catch_d
    move-exception v5

    move-object v2, v5

    .line 690
    .local v2, e:Ljava/security/cert/CertificateException;
    throw v2

    .line 675
    .end local v2           #e:Ljava/security/cert/CertificateException;
    :cond_10
    :try_start_10
    array-length v5, p1

    new-array v4, v5, [Ljava/security/cert/X509Certificate;

    .line 676
    .local v4, peerCertificateChain:[Ljava/security/cert/X509Certificate;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_14
    array-length v5, p1

    if-ge v3, v5, :cond_23

    .line 677
    new-instance v5, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    aget-object v6, p1, v3

    invoke-direct {v5, v6}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    aput-object v5, v4, v3

    .line 676
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 679
    :cond_23
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v1

    .line 680
    .local v1, client:Z
    if-eqz v1, :cond_35

    .line 681
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v5

    invoke-interface {v5, v4, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 694
    :goto_34
    return-void

    .line 684
    :cond_35
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, authType:Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/security/cert/CertificateException; {:try_start_10 .. :try_end_49} :catch_d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_49} :catch_4a

    goto :goto_34

    .line 691
    .end local v0           #authType:Ljava/lang/String;
    .end local v1           #client:Z
    .end local v3           #i:I
    .end local v4           #peerCertificateChain:[Ljava/security/cert/X509Certificate;
    :catch_4a
    move-exception v5

    move-object v2, v5

    .line 692
    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
