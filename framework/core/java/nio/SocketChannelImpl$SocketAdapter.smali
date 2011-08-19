.class Ljava/nio/SocketChannelImpl$SocketAdapter;
.super Ljava/net/Socket;
.source "SocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/SocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketAdapter"
.end annotation


# instance fields
.field private final channel:Ljava/nio/SocketChannelImpl;

.field private final socketImpl:Lorg/apache/harmony/luni/net/PlainSocketImpl;


# direct methods
.method constructor <init>(Lorg/apache/harmony/luni/net/PlainSocketImpl;Ljava/nio/SocketChannelImpl;)V
    .registers 3
    .parameter "socketImpl"
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 544
    invoke-direct {p0, p1}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    .line 545
    iput-object p1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    .line 546
    iput-object p2, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    .line 547
    invoke-static {p0}, Ljava/net/SocketUtils;->setCreated(Ljava/net/Socket;)V

    .line 548
    return-void
.end method

.method private checkOpenAndConnected()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 640
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    .line 641
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_10
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_20

    .line 644
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_20
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .registers 4
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 596
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 597
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 599
    :cond_f
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    iget v0, v0, Ljava/nio/SocketChannelImpl;->status:I

    if-ne v1, v0, :cond_1b

    .line 600
    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v0

    .line 602
    :cond_1b
    invoke-super {p0, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 606
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    iput-boolean v1, v0, Ljava/nio/SocketChannelImpl;->isBound:Z

    .line 607
    return-void
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    monitor-enter v0

    .line 612
    :try_start_3
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 613
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->close()V

    .line 617
    :goto_10
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    const/4 v2, 0x3

    iput v2, v1, Ljava/nio/SocketChannelImpl;->status:I

    .line 618
    monitor-exit v0

    .line 619
    return-void

    .line 615
    :cond_17
    invoke-super {p0}, Ljava/net/Socket;->close()V

    goto :goto_10

    .line 618
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .registers 5
    .parameter "remoteAddr"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_e

    .line 581
    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v0

    .line 583
    :cond_e
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 584
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 586
    :cond_1a
    invoke-super {p0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 587
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #calls: Ljava/nio/SocketChannelImpl;->initLocalAddressAndPort()V
    invoke-static {v0}, Ljava/nio/SocketChannelImpl;->access$000(Ljava/nio/SocketChannelImpl;)V

    .line 588
    invoke-super {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 589
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->setConnected()V

    .line 590
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-super {p0}, Ljava/net/Socket;->isBound()Z

    move-result v1

    iput-boolean v1, v0, Ljava/nio/SocketChannelImpl;->isBound:Z

    .line 592
    :cond_35
    return-void
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .prologue
    .line 556
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->checkOpenAndConnected()V

    .line 633
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 634
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket input is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_11
    new-instance v0, Ljava/nio/SocketChannelImpl$SocketChannelInputStream;

    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-direct {v0, v1}, Ljava/nio/SocketChannelImpl$SocketChannelInputStream;-><init>(Ljava/nio/channels/SocketChannel;)V

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 3

    .prologue
    .line 572
    :try_start_0
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->getLocalAddress()Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 574
    :goto_6
    return-object v1

    .line 573
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 574
    .local v0, e:Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 623
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->checkOpenAndConnected()V

    .line 624
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 625
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket output is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_11
    new-instance v0, Ljava/nio/SocketChannelImpl$SocketChannelOutputStream;

    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-direct {v0, v1}, Ljava/nio/SocketChannelImpl$SocketChannelOutputStream;-><init>(Ljava/nio/channels/SocketChannel;)V

    return-object v0
.end method

.method public isBound()Z
    .registers 2

    .prologue
    .line 561
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    iget-boolean v0, v0, Ljava/nio/SocketChannelImpl;->isBound:Z

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 566
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v0

    return v0
.end method

.method socketImpl()Lorg/apache/harmony/luni/net/PlainSocketImpl;
    .registers 2

    .prologue
    .line 551
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    return-object v0
.end method
