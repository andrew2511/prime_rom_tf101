.class public Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;
.super Ljavax/net/ssl/SSLEngine;
.source "SSLEngineImpl.java"


# instance fields
.field private alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

.field private appData:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;

.field private close_notify_was_received:Z

.field private close_notify_was_sent:Z

.field private dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

.field private engine_was_closed:Z

.field private engine_was_shutteddown:Z

.field private handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

.field private handshake_started:Z

.field private isInboundDone:Z

.field private isOutboundDone:Z

.field private logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

.field private peer_mode_was_set:Z

.field private recProtIS:Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

.field protected recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

.field private remaining_hsh_data:[B

.field private remaining_wrapped_data:[B

.field private session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

.field protected sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 6
    .parameter "host"
    .parameter "port"
    .parameter "sslParameters"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLEngine;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->peer_mode_was_set:Z

    .line 40
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    .line 42
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    .line 44
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    .line 46
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    .line 48
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    .line 51
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    .line 54
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    .line 67
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    .line 77
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    .line 78
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    .line 81
    const-string v0, "engine"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 90
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 91
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 4
    .parameter "sslParameters"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljavax/net/ssl/SSLEngine;-><init>()V

    .line 38
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->peer_mode_was_set:Z

    .line 40
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    .line 42
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    .line 44
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    .line 46
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    .line 48
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    .line 51
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    .line 54
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    .line 67
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    .line 77
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    .line 78
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    .line 81
    const-string v0, "engine"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 85
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 86
    return-void
.end method

.method private getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;
    .registers 2

    .prologue
    .line 751
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    if-eqz v0, :cond_7

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_6
.end method

.method private shutdown()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 735
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    .line 736
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    .line 737
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    .line 738
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    .line 739
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-eqz v0, :cond_23

    .line 740
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->shutdown()V

    .line 741
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    .line 742
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->shutdown()V

    .line 743
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    .line 744
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->shutdown()V

    .line 745
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    .line 747
    :cond_23
    return-void
.end method


# virtual methods
.method public beginHandshake()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    if-eqz v0, :cond_c

    .line 102
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Engine has already been closed."

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_c
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->peer_mode_was_set:Z

    if-nez v0, :cond_18

    .line 105
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client/Server mode was not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_18
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-nez v0, :cond_50

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    .line 109
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 110
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    .line 114
    :goto_2c
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->appData:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;

    .line 115
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    .line 116
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recProtIS:Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

    .line 117
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recProtIS:Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->appData:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;Lorg/apache/harmony/xnet/provider/jsse/Appendable;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    .line 120
    :cond_50
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->start()V

    .line 121
    return-void

    .line 112
    :cond_56
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    goto :goto_2c
.end method

.method public closeInbound()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 131
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_1f

    .line 132
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeInbound() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 134
    :cond_1f
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    if-eqz v0, :cond_24

    .line 153
    :cond_23
    :goto_23
    return-void

    .line 137
    :cond_24
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    .line 138
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    .line 139
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-eqz v0, :cond_49

    .line 140
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    if-nez v0, :cond_23

    .line 141
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v0, :cond_39

    .line 142
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->invalidate()V

    .line 144
    :cond_39
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    const/4 v1, 0x2

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 146
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Inbound is closed before close_notify alert has been received."

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_49
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    goto :goto_23
.end method

.method public closeOutbound()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 162
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_1f

    .line 163
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeOutbound() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 165
    :cond_1f
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    if-eqz v0, :cond_24

    .line 179
    :goto_23
    return-void

    .line 168
    :cond_24
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    .line 169
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-eqz v0, :cond_35

    .line 171
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 173
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    .line 178
    :goto_32
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    goto :goto_23

    .line 176
    :cond_35
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    goto :goto_32
.end method

.method public getDelegatedTask()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getTask()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 2

    .prologue
    .line 349
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    if-eqz v0, :cond_b

    .line 351
    :cond_8
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 361
    :goto_a
    return-object v0

    .line 353
    :cond_b
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->hasAlert()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 355
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_a

    .line 357
    :cond_16
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    if-nez v0, :cond_21

    .line 359
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_a

    .line 361
    :cond_21
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto :goto_a
.end method

.method public getNeedClientAuth()Z
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v0, :cond_7

    .line 372
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 374
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->NULL_SESSION:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto :goto_6
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 200
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getSupportedCipherSuiteNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 232
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
    .line 277
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public isInboundDone()Z
    .registers 2

    .prologue
    .line 384
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isOutboundDone()Z
    .registers 2

    .prologue
    .line 394
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    return v0
.end method

.method public setEnableSessionCreation(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 327
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 328
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .parameter "suites"

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .parameter "protocols"

    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .registers 3
    .parameter "need"

    .prologue
    .line 287
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 288
    return-void
.end method

.method public setUseClientMode(Z)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 262
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-eqz v0, :cond_c

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not change the mode after the initial handshake has begun."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setUseClientMode(Z)V

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->peer_mode_was_set:Z

    .line 268
    return-void
.end method

.method public setWantClientAuth(Z)V
    .registers 3
    .parameter "want"

    .prologue
    .line 307
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 308
    return-void
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .registers 16
    .parameter "src"
    .parameter "dsts"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 411
    iget-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    if-eqz v6, :cond_10

    .line 412
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v8, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    .line 533
    :goto_f
    return-object v6

    .line 415
    :cond_10
    if-eqz p1, :cond_14

    if-nez p2, :cond_1c

    .line 416
    :cond_14
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Some of the input parameters are null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 420
    :cond_1c
    iget-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-nez v6, :cond_23

    .line 421
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->beginHandshake()V

    .line 424
    :cond_23
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 427
    .local v3, handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v6, :cond_2f

    iget-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    if-eqz v6, :cond_4b

    :cond_2f
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v6}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v6}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 432
    :cond_3f
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v7, v3, v8, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_f

    .line 436
    :cond_4b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getMinRecordSize()I

    move-result v7

    if-ge v6, v7, :cond_65

    .line 437
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_f

    .line 443
    :cond_65
    :try_start_65
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, capacity:I
    move v4, p3

    .local v4, i:I
    :goto_6a
    add-int v6, p3, p4

    if-ge v4, v6, :cond_c5

    .line 447
    aget-object v6, p2, v4

    if-nez v6, :cond_8d

    .line 448
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Some of the input parameters are null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_7a
    .catch Ljava/nio/BufferUnderflowException; {:try_start_65 .. :try_end_7a} :catch_7a
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_65 .. :try_end_7a} :catch_9b
    .catch Ljavax/net/ssl/SSLException; {:try_start_65 .. :try_end_7a} :catch_e0
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_7a} :catch_10c

    .line 530
    .end local v0           #capacity:I
    .end local v4           #i:I
    :catch_7a
    move-exception v6

    move-object v2, v6

    .line 532
    .local v2, e:Ljava/nio/BufferUnderflowException;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 533
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_f

    .line 451
    .end local v2           #e:Ljava/nio/BufferUnderflowException;
    .restart local v0       #capacity:I
    .restart local v4       #i:I
    :cond_8d
    :try_start_8d
    aget-object v6, p2, v4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_bb

    .line 452
    new-instance v6, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v6}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v6
    :try_end_9b
    .catch Ljava/nio/BufferUnderflowException; {:try_start_8d .. :try_end_9b} :catch_7a
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_8d .. :try_end_9b} :catch_9b
    .catch Ljavax/net/ssl/SSLException; {:try_start_8d .. :try_end_9b} :catch_e0
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_9b} :catch_10c

    .line 535
    .end local v0           #capacity:I
    .end local v4           #i:I
    :catch_9b
    move-exception v6

    move-object v2, v6

    .line 537
    .local v2, e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    const/4 v7, 0x2

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getDescriptionCode()B

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 538
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    .line 539
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 540
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v6, :cond_b6

    .line 541
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->invalidate()V

    .line 545
    :cond_b6
    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getReason()Ljavax/net/ssl/SSLException;

    move-result-object v6

    throw v6

    .line 454
    .end local v2           #e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    .restart local v0       #capacity:I
    .restart local v4       #i:I
    :cond_bb
    :try_start_bb
    aget-object v6, p2, v4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int/2addr v0, v6

    .line 446
    add-int/lit8 v4, v4, 0x1

    goto :goto_6a

    .line 456
    :cond_c5
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getDataSize(I)I

    move-result v6

    if-ge v0, v6, :cond_e3

    .line 457
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_de
    .catch Ljava/nio/BufferUnderflowException; {:try_start_bb .. :try_end_de} :catch_7a
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_bb .. :try_end_de} :catch_9b
    .catch Ljavax/net/ssl/SSLException; {:try_start_bb .. :try_end_de} :catch_e0
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_de} :catch_10c

    goto/16 :goto_f

    .line 546
    .end local v0           #capacity:I
    .end local v4           #i:I
    :catch_e0
    move-exception v6

    move-object v2, v6

    .line 547
    .local v2, e:Ljavax/net/ssl/SSLException;
    throw v2

    .line 461
    .end local v2           #e:Ljavax/net/ssl/SSLException;
    .restart local v0       #capacity:I
    .restart local v4       #i:I
    :cond_e3
    :try_start_e3
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recProtIS:Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

    invoke-virtual {v6, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;->setSourceBuffer(Ljava/nio/ByteBuffer;)V

    .line 465
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->unwrap()I

    move-result v5

    .line 467
    .local v5, type:I
    packed-switch v5, :pswitch_data_1e0

    .line 525
    :cond_f1
    :goto_f1
    :pswitch_f1
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recProtIS:Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

    invoke-virtual {v9}, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;->consumed()I

    move-result v9

    iget-object v10, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->appData:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;

    invoke-virtual {v10, p2, p3, p4}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;->placeTo([Ljava/nio/ByteBuffer;II)I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_10a
    .catch Ljava/nio/BufferUnderflowException; {:try_start_e3 .. :try_end_10a} :catch_7a
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_e3 .. :try_end_10a} :catch_9b
    .catch Ljavax/net/ssl/SSLException; {:try_start_e3 .. :try_end_10a} :catch_e0
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_10a} :catch_10c

    goto/16 :goto_f

    .line 548
    .end local v0           #capacity:I
    .end local v4           #i:I
    .end local v5           #type:I
    :catch_10c
    move-exception v6

    move-object v2, v6

    .line 549
    .local v2, e:Ljava/io/IOException;
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    const/4 v7, 0x2

    const/16 v8, 0x50

    invoke-virtual {v6, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 551
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    .line 554
    new-instance v6, Ljavax/net/ssl/SSLException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 470
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #capacity:I
    .restart local v4       #i:I
    .restart local v5       #type:I
    :pswitch_123
    :try_start_123
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v6, v7}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f1

    .line 472
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto :goto_f1

    .line 478
    :pswitch_13a
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->isFatalAlert()Z

    move-result v6

    if-eqz v6, :cond_172

    .line 479
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 480
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v6, :cond_150

    .line 481
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->invalidate()V

    .line 483
    :cond_150
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fatal alert received "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->getAlertDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, description:Ljava/lang/String;
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    .line 486
    new-instance v6, Ljavax/net/ssl/SSLException;

    invoke-direct {v6, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 488
    .end local v1           #description:Ljava/lang/String;
    :cond_172
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v6, :cond_194

    .line 489
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Warning allert has been received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->getAlertDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 492
    :cond_194
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->getDescriptionCode()B

    move-result v6

    sparse-switch v6, :sswitch_data_1ec

    .line 520
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    goto/16 :goto_f1

    .line 494
    :sswitch_1a4
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 495
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    .line 496
    iget-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    if-nez v6, :cond_1b8

    .line 497
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->closeOutbound()V

    .line 498
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->closeInbound()V

    goto/16 :goto_f1

    .line 500
    :cond_1b8
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->closeInbound()V

    .line 501
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    goto/16 :goto_f1

    .line 505
    :sswitch_1c0
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 506
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-nez v6, :cond_1d8

    .line 509
    new-instance v6, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v7, 0x28

    new-instance v8, Ljavax/net/ssl/SSLHandshakeException;

    const-string v9, "Received no_renegotiation during the initial handshake"

    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v6

    .line 516
    :cond_1d8
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->stop()V
    :try_end_1dd
    .catch Ljava/nio/BufferUnderflowException; {:try_start_123 .. :try_end_1dd} :catch_7a
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_123 .. :try_end_1dd} :catch_9b
    .catch Ljavax/net/ssl/SSLException; {:try_start_123 .. :try_end_1dd} :catch_e0
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_1dd} :catch_10c

    goto/16 :goto_f1

    .line 467
    nop

    :pswitch_data_1e0
    .packed-switch 0x14
        :pswitch_123
        :pswitch_13a
        :pswitch_123
        :pswitch_f1
    .end packed-switch

    .line 492
    :sswitch_data_1ec
    .sparse-switch
        0x0 -> :sswitch_1a4
        0x64 -> :sswitch_1c0
    .end sparse-switch
.end method

.method public wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 16
    .parameter "srcs"
    .parameter "offset"
    .parameter "len"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 576
    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    if-eqz v5, :cond_10

    .line 577
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v5, v6, v7, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    .line 717
    :goto_f
    return-object v5

    .line 580
    :cond_10
    if-eqz p1, :cond_14

    if-nez p4, :cond_1c

    .line 581
    :cond_14
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Some of the input parameters are null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 584
    :cond_1c
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 585
    new-instance v5, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v5}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v5

    .line 588
    :cond_28
    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-nez v5, :cond_2f

    .line 589
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->beginHandshake()V

    .line 592
    :cond_2f
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 595
    .local v3, handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v5, :cond_3b

    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    if-eqz v5, :cond_55

    :cond_3b
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v5}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v5}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 600
    :cond_4b
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    invoke-direct {v5, v6, v3, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_f

    .line 604
    :cond_55
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 605
    .local v1, capacity:I
    const/4 v4, 0x0

    .line 607
    .local v4, produced:I
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->hasAlert()Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 609
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v5, v10}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getRecordSize(I)I

    move-result v5

    if-ge v1, v5, :cond_72

    .line 610
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v5, v6, v3, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_f

    .line 614
    :cond_72
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->wrap()[B

    move-result-object v0

    .line 616
    .local v0, alert_data:[B
    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 617
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->isFatalAlert()Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 618
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 619
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v5, :cond_91

    .line 620
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->invalidate()V

    .line 623
    :cond_91
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    .line 624
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    array-length v8, v0

    invoke-direct {v5, v6, v7, v9, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_f

    .line 629
    :cond_a0
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 631
    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    if-eqz v5, :cond_bc

    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    if-eqz v5, :cond_bc

    .line 632
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    .line 633
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    array-length v8, v0

    invoke-direct {v5, v6, v7, v9, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_f

    .line 637
    :cond_bc
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v7

    array-length v8, v0

    invoke-direct {v5, v6, v7, v9, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_f

    .line 644
    .end local v0           #alert_data:[B
    :cond_cc
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getMinRecordSize()I

    move-result v5

    if-ge v1, v5, :cond_10f

    .line 645
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v5, :cond_106

    .line 646
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Capacity of the destination("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") < MIN_PACKET_SIZE("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getMinRecordSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 650
    :cond_106
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v5, v6, v3, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_f

    .line 655
    :cond_10f
    :try_start_10f
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v5}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1ce

    .line 658
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v5, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->setSourceBuffers([Ljava/nio/ByteBuffer;II)V

    .line 659
    const/16 v5, 0x4805

    if-ge v1, v5, :cond_18d

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->available()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getRecordSize(I)I

    move-result v5

    if-ge v1, v5, :cond_18d

    .line 662
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v5, :cond_166

    .line 663
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The destination buffer("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") can not take the resulting packet("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->available()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getRecordSize(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 668
    :cond_166
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v3, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_16f
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_10f .. :try_end_16f} :catch_171

    goto/16 :goto_f

    .line 720
    :catch_171
    move-exception v5

    move-object v2, v5

    .line 722
    .local v2, e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getDescriptionCode()B

    move-result v6

    invoke-virtual {v5, v10, v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 723
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    .line 724
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v5, :cond_188

    .line 725
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->invalidate()V

    .line 729
    :cond_188
    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getReason()Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5

    .line 672
    .end local v2           #e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    :cond_18d
    :try_start_18d
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    if-nez v5, :cond_19d

    .line 673
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    const/16 v6, 0x17

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v5, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->wrap(BLorg/apache/harmony/xnet/provider/jsse/DataStream;)[B

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    .line 677
    :cond_19d
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    array-length v5, v5

    if-ge v1, v5, :cond_1b2

    .line 683
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->consumed()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v3, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_f

    .line 687
    :cond_1b2
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    invoke-virtual {p4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 688
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    array-length v4, v5

    .line 689
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    .line 690
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->consumed()I

    move-result v7

    invoke-direct {v5, v6, v3, v7, v4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_f

    .line 694
    :cond_1ce
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    if-nez v5, :cond_1da

    .line 695
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->wrap()[B

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    .line 697
    :cond_1da
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    array-length v5, v5

    if-ge v1, v5, :cond_1ea

    .line 703
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v3, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_f

    .line 707
    :cond_1ea
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    invoke-virtual {p4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 708
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    array-length v4, v5

    .line 709
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    .line 711
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 712
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v5}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20b

    .line 714
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 717
    :cond_20b
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_219
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_18d .. :try_end_219} :catch_171

    goto/16 :goto_f
.end method
