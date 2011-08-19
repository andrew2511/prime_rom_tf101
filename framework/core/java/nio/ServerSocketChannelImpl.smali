.class final Ljava/nio/ServerSocketChannelImpl;
.super Ljava/nio/channels/ServerSocketChannel;
.source "ServerSocketChannelImpl.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/FileDescriptorHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;
    }
.end annotation


# instance fields
.field private final acceptLock:Ljava/lang/Object;

.field private final fd:Ljava/io/FileDescriptor;

.field private final impl:Ljava/net/SocketImpl;

.field private isBound:Z

.field private final socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;


# direct methods
.method private constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/ServerSocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 4
    .parameter "sp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/nio/channels/ServerSocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 42
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 43
    new-instance v0, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;

    iget-object v1, p0, Ljava/nio/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->impl:Ljava/net/SocketImpl;

    .line 44
    new-instance v0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    iget-object v1, p0, Ljava/nio/ServerSocketChannelImpl;->impl:Ljava/net/SocketImpl;

    invoke-direct {v0, v1, p0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;-><init>(Ljava/net/SocketImpl;Ljava/nio/ServerSocketChannelImpl;)V

    iput-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/ServerSocketChannelImpl;->isBound:Z

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->acceptLock:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method static synthetic access$100(Ljava/nio/ServerSocketChannelImpl;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Ljava/nio/ServerSocketChannelImpl;->isBound:Z

    return v0
.end method

.method static synthetic access$102(Ljava/nio/ServerSocketChannelImpl;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Ljava/nio/ServerSocketChannelImpl;->isBound:Z

    return p1
.end method


# virtual methods
.method public accept()Ljava/nio/channels/SocketChannel;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0}, Ljava/nio/ServerSocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_d

    .line 66
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 68
    :cond_d
    iget-boolean v0, p0, Ljava/nio/ServerSocketChannelImpl;->isBound:Z

    if-nez v0, :cond_17

    .line 69
    new-instance v0, Ljava/nio/channels/NotYetBoundException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetBoundException;-><init>()V

    throw v0

    .line 74
    :cond_17
    new-instance v9, Ljava/nio/SocketChannelImpl;

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {v9, v0, v1}, Ljava/nio/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Z)V

    .line 75
    .local v9, result:Ljava/nio/SocketChannelImpl;
    invoke-virtual {v9}, Ljava/nio/SocketChannelImpl;->socket()Ljava/net/Socket;

    move-result-object v10

    .line 78
    .local v10, resultSocket:Ljava/net/Socket;
    :try_start_24
    invoke-virtual {p0}, Ljava/nio/ServerSocketChannelImpl;->begin()V

    .line 79
    iget-object v12, p0, Ljava/nio/ServerSocketChannelImpl;->acceptLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_78

    .line 80
    :try_start_2a
    invoke-virtual {p0}, Ljava/nio/ServerSocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_75

    .line 81
    :try_start_2f
    invoke-virtual {p0}, Ljava/nio/ServerSocketChannelImpl;->isBlocking()Z

    move-result v8

    .line 82
    .local v8, isBlocking:Z
    if-nez v8, :cond_5e

    .line 83
    const/4 v0, 0x1

    new-array v7, v0, [I

    .line 84
    .local v7, tryResult:[I
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    iget-object v3, p0, Ljava/nio/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    aput-object v3, v1, v2

    sget-object v2, Ljava/nio/SelectorImpl;->EMPTY_FILE_DESCRIPTORS_ARRAY:[Ljava/io/FileDescriptor;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->select([Ljava/io/FileDescriptor;[Ljava/io/FileDescriptor;IIJ[I)Z

    move-result v11

    .line 86
    .local v11, success:Z
    if-eqz v11, :cond_53

    const/4 v0, 0x0

    aget v0, v7, v0

    if-nez v0, :cond_5e

    .line 88
    :cond_53
    const/4 v0, 0x0

    monitor-exit v13
    :try_end_55
    .catchall {:try_start_2f .. :try_end_55} :catchall_72

    :try_start_55
    monitor-exit v12
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_75

    .line 104
    invoke-virtual {v10}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ServerSocketChannelImpl;->end(Z)V

    .line 106
    .end local v7           #tryResult:[I
    .end local v11           #success:Z
    :goto_5d
    return-object v0

    .line 94
    :cond_5e
    :try_start_5e
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    #calls: Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->accept(Ljava/net/Socket;Ljava/nio/SocketChannelImpl;)Ljava/net/Socket;
    invoke-static {v0, v10, v9}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->access$000(Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;Ljava/net/Socket;Ljava/nio/SocketChannelImpl;)Ljava/net/Socket;
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_72
    .catch Ljava/net/SocketTimeoutException; {:try_start_5e .. :try_end_63} :catch_6e

    .line 101
    :goto_63
    :try_start_63
    monitor-exit v13
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_72

    .line 102
    :try_start_64
    monitor-exit v12
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_75

    .line 104
    invoke-virtual {v10}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ServerSocketChannelImpl;->end(Z)V

    move-object v0, v9

    .line 106
    goto :goto_5d

    .line 97
    :catch_6e
    move-exception v0

    .line 100
    if-nez v8, :cond_5e

    goto :goto_63

    .line 101
    .end local v8           #isBlocking:Z
    :catchall_72
    move-exception v0

    :try_start_73
    monitor-exit v13
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    :try_start_74
    throw v0

    .line 102
    :catchall_75
    move-exception v0

    monitor-exit v12
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_75

    :try_start_77
    throw v0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_78

    .line 104
    :catchall_78
    move-exception v0

    invoke-virtual {v10}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ServerSocketChannelImpl;->end(Z)V

    throw v0
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected declared-synchronized implCloseSelectableChannel()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    invoke-virtual {v0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->isClosed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 117
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    invoke-virtual {v0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->close()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 119
    :cond_e
    monitor-exit p0

    return-void

    .line 116
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected implConfigureBlocking(Z)V
    .registers 2
    .parameter "blockingMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    return-void
.end method

.method public socket()Ljava/net/ServerSocket;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    return-object v0
.end method
