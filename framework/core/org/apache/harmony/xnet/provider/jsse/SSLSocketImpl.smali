.class public Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;
.super Ljavax/net/ssl/SSLSocket;
.source "SSLSocketImpl.java"


# instance fields
.field private alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

.field private appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

.field private appDataOS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;

.field private handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

.field private handshake_started:Z

.field protected input:Ljava/io/InputStream;

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

.field private logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

.field protected output:Ljava/io/OutputStream;

.field protected recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

.field private session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

.field private socket_was_closed:Z

.field protected sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 7
    .parameter "host"
    .parameter "port"
    .parameter "localHost"
    .parameter "localPort"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 42
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    .line 59
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    .line 74
    const-string v0, "socket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 124
    iput-object p5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 125
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->init()V

    .line 126
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 5
    .parameter "host"
    .parameter "port"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    .line 59
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    .line 74
    const-string v0, "socket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 103
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 104
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->init()V

    .line 105
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 7
    .parameter "address"
    .parameter "port"
    .parameter "localAddress"
    .parameter "localPort"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 42
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    .line 59
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    .line 74
    const-string v0, "socket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 161
    iput-object p5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 162
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->init()V

    .line 163
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 5
    .parameter "host"
    .parameter "port"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;I)V

    .line 42
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    .line 59
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    .line 74
    const-string v0, "socket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 141
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 142
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->init()V

    .line 143
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 3
    .parameter "sslParameters"

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 42
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    .line 59
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    .line 74
    const-string v0, "socket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 86
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 88
    return-void
.end method

.method private doHandshake()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 717
    :cond_0
    :goto_0
    :try_start_0
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    .local v5, status:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v5, v7}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_cc

    .line 719
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v7, :cond_3f

    .line 720
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v5, v7}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    const-string v7, "NEED_WRAP"

    move-object v3, v7

    .line 727
    .local v3, s:Ljava/lang/String;
    :goto_1d
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SSLSocketImpl: HS status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 729
    .end local v3           #s:Ljava/lang/String;
    :cond_3f
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v5, v7}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 730
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->wrap()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 768
    :cond_52
    :goto_52
    :pswitch_52
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->hasAlert()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 772
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->wrap()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 773
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V
    :try_end_6a
    .catch Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException; {:try_start_0 .. :try_end_6a} :catch_6b
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_0 .. :try_end_6a} :catch_bf

    goto :goto_0

    .line 776
    .end local v5           #status:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :catch_6b
    move-exception v7

    move-object v0, v7

    .line 777
    .local v0, e:Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->setEnd()V

    .line 778
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Connection was closed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 720
    .end local v0           #e:Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException;
    .restart local v5       #status:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_7a
    :try_start_7a
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v5, v7}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_86

    const-string v7, "NEED_UNWRAP"

    move-object v3, v7

    goto :goto_1d

    :cond_86
    const-string v7, "STATUS: OTHER!"

    move-object v3, v7

    goto :goto_1d

    .line 731
    :cond_8a
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v5, v7}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_fe

    .line 737
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->unwrap()I

    move-result v6

    .local v6, type:I
    packed-switch v6, :pswitch_data_11e

    .line 757
    const/16 v7, 0xa

    new-instance v8, Ljavax/net/ssl/SSLException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected message of type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has been got"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->reportFatalAlert(BLjavax/net/ssl/SSLException;)V
    :try_end_be
    .catch Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException; {:try_start_7a .. :try_end_be} :catch_6b
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_7a .. :try_end_be} :catch_bf

    goto :goto_52

    .line 779
    .end local v5           #status:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v6           #type:I
    :catch_bf
    move-exception v7

    move-object v0, v7

    .line 781
    .local v0, e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getDescriptionCode()B

    move-result v7

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getReason()Ljavax/net/ssl/SSLException;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->reportFatalAlert(BLjavax/net/ssl/SSLException;)V

    .line 784
    .end local v0           #e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    :cond_cc
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 785
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-eqz v7, :cond_fd

    .line 787
    new-instance v1, Ljavax/net/ssl/HandshakeCompletedEvent;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-direct {v1, p0, v7}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    .line 789
    .local v1, event:Ljavax/net/ssl/HandshakeCompletedEvent;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 790
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e6
    if-ge v2, v4, :cond_fd

    .line 791
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/HandshakeCompletedListener;

    invoke-interface {v7, v1}, Ljavax/net/ssl/HandshakeCompletedListener;->handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V

    .line 790
    add-int/lit8 v2, v2, 0x1

    goto :goto_e6

    .line 750
    .end local v1           #event:Ljavax/net/ssl/HandshakeCompletedEvent;
    .end local v2           #i:I
    .end local v4           #size:I
    .restart local v5       #status:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v6       #type:I
    :pswitch_f6
    :try_start_f6
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->processAlert()V

    .line 751
    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    if-eqz v7, :cond_52

    .line 795
    .end local v5           #status:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v6           #type:I
    :cond_fd
    return-void

    .line 764
    .restart local v5       #status:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_fe
    const/16 v7, 0x50

    new-instance v8, Ljavax/net/ssl/SSLException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Handshake passed unexpected status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->reportFatalAlert(BLjavax/net/ssl/SSLException;)V
    :try_end_11b
    .catch Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException; {:try_start_f6 .. :try_end_11b} :catch_6b
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_f6 .. :try_end_11b} :catch_bf

    goto/16 :goto_52

    .line 737
    nop

    :pswitch_data_11e
    .packed-switch 0x14
        :pswitch_52
        :pswitch_f6
        :pswitch_52
        :pswitch_52
    .end packed-switch
.end method

.method private processAlert()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 801
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->hasAlert()Z

    move-result v1

    if-nez v1, :cond_9

    .line 826
    :goto_8
    return-void

    .line 804
    :cond_9
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->isFatalAlert()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 805
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fatal alert received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->getAlertDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, description:Ljava/lang/String;
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->shutdown()V

    .line 809
    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 812
    .end local v0           #description:Ljava/lang/String;
    :cond_38
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v1, :cond_5a

    .line 813
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning alert received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->getAlertDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 816
    :cond_5a
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->getDescriptionCode()B

    move-result v1

    packed-switch v1, :pswitch_data_78

    .line 823
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    goto :goto_8

    .line 818
    :pswitch_69
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 819
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->setEnd()V

    .line 820
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->close()V

    goto :goto_8

    .line 816
    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_69
    .end packed-switch
.end method

.method private reportFatalAlert(BLjavax/net/ssl/SSLException;)V
    .registers 5
    .parameter "description_code"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 833
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 836
    :try_start_6
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->wrap()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_11} :catch_1a

    .line 838
    :goto_11
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 839
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->shutdown()V

    .line 840
    throw p2

    .line 837
    :catch_1a
    move-exception v0

    goto :goto_11
.end method

.method private shutdown()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 578
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    if-eqz v0, :cond_1a

    .line 579
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->shutdown()V

    .line 580
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    .line 581
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->shutdown()V

    .line 582
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    .line 583
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->shutdown()V

    .line 584
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    .line 586
    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    .line 587
    return-void
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 372
    if-nez p1, :cond_a

    .line 373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_15

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    .line 378
    :cond_15
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    return-void
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 512
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_1f

    .line 513
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSLSocket.close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 515
    :cond_1f
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    if-nez v0, :cond_45

    .line 516
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    if-eqz v0, :cond_3d

    .line 517
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 520
    :try_start_2d
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->wrap()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_38} :catch_46

    .line 522
    :goto_38
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 524
    :cond_3d
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->shutdown()V

    .line 525
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->closeTransportLayer()V

    .line 526
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    .line 528
    :cond_45
    return-void

    .line 521
    :catch_46
    move-exception v0

    goto :goto_38
.end method

.method protected closeTransportLayer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 191
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->input:Ljava/io/InputStream;

    if-eqz v0, :cond_11

    .line 192
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 193
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 195
    :cond_11
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .registers 2
    .parameter "endpoint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;)V

    .line 490
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->init()V

    .line 491
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .registers 3
    .parameter "endpoint"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    invoke-super {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 502
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->init()V

    .line 503
    return-void
.end method

.method public getEnableSessionCreation()Z
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

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
    .line 463
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    if-eqz v0, :cond_c

    .line 464
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket has already been closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    if-eqz v0, :cond_c

    .line 477
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket has already been closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataOS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;

    return-object v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .registers 3

    .prologue
    .line 352
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    if-nez v1, :cond_7

    .line 354
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->startHandshake()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_a

    .line 361
    :cond_7
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    :goto_9
    return-object v1

    .line 355
    :catch_a
    move-exception v0

    .line 358
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->NULL_SESSION:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto :goto_9
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getSupportedCipherSuiteNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 236
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->supportedProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getUseClientMode()Z
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method protected init()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    if-eqz v0, :cond_5

    .line 176
    :goto_4
    return-void

    .line 173
    :cond_5
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->initTransportLayer()V

    .line 174
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    .line 175
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataOS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;

    goto :goto_4
.end method

.method protected initTransportLayer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->input:Ljava/io/InputStream;

    .line 183
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    .line 184
    return-void
.end method

.method protected needAppData()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 596
    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    if-nez v2, :cond_7

    .line 597
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->startHandshake()V

    .line 600
    :cond_7
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v2, :cond_12

    .line 601
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v3, "SSLSocket.needAppData.."

    invoke-virtual {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 604
    :cond_12
    :try_start_12
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->available()I

    move-result v2

    if-nez v2, :cond_87

    .line 609
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->unwrap()I

    move-result v1

    .local v1, type:I
    packed-switch v1, :pswitch_data_c6

    .line 633
    const/16 v2, 0xa

    new-instance v3, Ljavax/net/ssl/SSLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected message of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has been got"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->reportFatalAlert(BLjavax/net/ssl/SSLException;)V

    .line 637
    :cond_46
    :goto_46
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->hasAlert()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 641
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->wrap()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 642
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 644
    :cond_5e
    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    if-eqz v2, :cond_12

    .line 645
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->setEnd()V

    .line 660
    .end local v1           #type:I
    :cond_67
    :goto_67
    return-void

    .line 611
    .restart local v1       #type:I
    :pswitch_68
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 616
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->doHandshake()V
    :try_end_79
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_12 .. :try_end_79} :catch_7a
    .catch Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException; {:try_start_12 .. :try_end_79} :catch_be

    goto :goto_46

    .line 649
    .end local v1           #type:I
    :catch_7a
    move-exception v2

    move-object v0, v2

    .line 651
    .local v0, e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getDescriptionCode()B

    move-result v2

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getReason()Ljavax/net/ssl/SSLException;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->reportFatalAlert(BLjavax/net/ssl/SSLException;)V

    .line 656
    .end local v0           #e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    :cond_87
    :goto_87
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v2, :cond_67

    .line 657
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSLSocket.needAppData: app data len: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->available()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    goto :goto_67

    .line 620
    .restart local v1       #type:I
    :pswitch_aa
    :try_start_aa
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->processAlert()V

    .line 621
    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    if-eqz v2, :cond_46

    goto :goto_67

    .line 626
    :pswitch_b2
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v2, :cond_46

    .line 627
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v3, "SSLSocket.needAppData: got the data"

    invoke-virtual {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V
    :try_end_bd
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_aa .. :try_end_bd} :catch_7a
    .catch Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException; {:try_start_aa .. :try_end_bd} :catch_be

    goto :goto_46

    .line 652
    .end local v1           #type:I
    :catch_be
    move-exception v2

    move-object v0, v2

    .line 654
    .local v0, e:Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException;
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->setEnd()V

    goto :goto_87

    .line 609
    :pswitch_data_c6
    .packed-switch 0x15
        :pswitch_aa
        :pswitch_68
        :pswitch_b2
    .end packed-switch
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 389
    if-nez p1, :cond_a

    .line 390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_16

    .line 393
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_16
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
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
    .line 535
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Method sendUrgentData() is not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnableSessionCreation(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 330
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 331
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .parameter "suites"

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .parameter "protocols"

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .registers 3
    .parameter "need"

    .prologue
    .line 290
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 291
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
    .line 544
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Methods sendUrgentData, setOOBInline are not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUseClientMode(Z)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 266
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    if-eqz v0, :cond_c

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not change the mode after the initial handshake has begun."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setUseClientMode(Z)V

    .line 271
    return-void
.end method

.method public setWantClientAuth(Z)V
    .registers 3
    .parameter "want"

    .prologue
    .line 310
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 311
    return-void
.end method

.method public shutdownInput()V
    .registers 3

    .prologue
    .line 562
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method shutdownInput() is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shutdownOutput()V
    .registers 3

    .prologue
    .line 553
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method shutdownOutput() is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startHandshake()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    if-nez v0, :cond_c

    .line 414
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket is not connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_c
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    if-eqz v0, :cond_18

    .line 417
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket has already been closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_18
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    if-nez v0, :cond_56

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    .line 422
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 423
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_32

    .line 424
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v1, "SSLSocketImpl: CLIENT"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 426
    :cond_32
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    .line 434
    :goto_39
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    .line 435
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/SSLStreamedInput;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->input:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLStreamedInput;-><init>(Ljava/io/InputStream;)V

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->dataPoint:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;Lorg/apache/harmony/xnet/provider/jsse/Appendable;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    .line 440
    :cond_56
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_61

    .line 441
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v1, "SSLSocketImpl.startHandshake"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 444
    :cond_61
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->start()V

    .line 446
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->doHandshake()V

    .line 448
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_74

    .line 449
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v1, "SSLSocketImpl.startHandshake: END"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 451
    :cond_74
    return-void

    .line 428
    :cond_75
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_80

    .line 429
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v1, "SSLSocketImpl: SERVER"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 431
    :cond_80
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    goto :goto_39
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 571
    const-string v0, "[SSLSocketImpl]"

    return-object v0
.end method

.method protected writeAppData([BII)V
    .registers 10
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x4000

    .line 668
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    if-nez v1, :cond_9

    .line 669
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->startHandshake()V

    .line 671
    :cond_9
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v1, :cond_2f

    .line 672
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSLSocket.writeAppData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 677
    :cond_2f
    if-ge p3, v5, :cond_3f

    .line 678
    :try_start_31
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    const/16 v3, 0x17

    invoke-virtual {v2, v3, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->wrap(B[BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 698
    :cond_3e
    :goto_3e
    return-void

    .line 681
    :cond_3f
    :goto_3f
    if-lt p3, v5, :cond_55

    .line 682
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    const/16 v3, 0x17

    const/16 v4, 0x4000

    invoke-virtual {v2, v3, p1, p2, v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->wrap(B[BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 685
    add-int/lit16 p2, p2, 0x4000

    .line 686
    add-int/lit16 p3, p3, -0x4000

    goto :goto_3f

    .line 688
    :cond_55
    if-lez p3, :cond_3e

    .line 689
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    const/16 v3, 0x17

    invoke-virtual {v2, v3, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->wrap(B[BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_64
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_31 .. :try_end_64} :catch_65

    goto :goto_3e

    .line 694
    :catch_65
    move-exception v1

    move-object v0, v1

    .line 696
    .local v0, e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getDescriptionCode()B

    move-result v1

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getReason()Ljavax/net/ssl/SSLException;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->reportFatalAlert(BLjavax/net/ssl/SSLException;)V

    goto :goto_3e
.end method
