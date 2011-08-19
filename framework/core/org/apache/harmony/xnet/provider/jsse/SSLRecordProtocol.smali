.class public Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;
.super Ljava/lang/Object;
.source "SSLRecordProtocol.java"


# static fields
.field protected static final MAX_CIPHERED_DATA_LENGTH:I = 0x4800

.field protected static final MAX_COMPRESSED_DATA_LENGTH:I = 0x4400

.field protected static final MAX_DATA_LENGTH:I = 0x4000

.field protected static final MAX_SSL_PACKET_SIZE:I = 0x4805

.field private static final change_cipher_spec_byte:[B


# instance fields
.field private activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

.field private activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

.field private alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

.field private appData:Lorg/apache/harmony/xnet/provider/jsse/Appendable;

.field private handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

.field private in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

.field private logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

.field private pendingConnectionState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

.field private session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

.field private sessionWasChanged:Z

.field private version:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 98
    new-array v0, v2, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->change_cipher_spec_byte:[B

    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;Lorg/apache/harmony/xnet/provider/jsse/Appendable;)V
    .registers 6
    .parameter "handshakeProtocol"
    .parameter "alertProtocol"
    .parameter "in"
    .parameter "appData"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, "record"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->sessionWasChanged:Z

    .line 112
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    .line 113
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->setRecordProtocol(Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;)V

    .line 114
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    .line 115
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setRecordProtocol(Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;)V

    .line 116
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    .line 117
    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->appData:Lorg/apache/harmony/xnet/provider/jsse/Appendable;

    .line 118
    return-void
.end method

.method private packetize(B[B[B)[B
    .registers 10
    .parameter "type"
    .parameter "version"
    .parameter "fragment"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 229
    array-length v1, p3

    add-int/lit8 v1, v1, 0x5

    new-array v0, v1, [B

    .line 230
    .local v0, buff:[B
    aput-byte p1, v0, v3

    .line 231
    if-eqz p2, :cond_2c

    .line 232
    aget-byte v1, p2, v3

    aput-byte v1, v0, v2

    .line 233
    aget-byte v1, p2, v2

    aput-byte v1, v0, v4

    .line 238
    :goto_15
    const v1, 0xff00

    array-length v2, p3

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 239
    const/4 v1, 0x4

    array-length v2, p3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 240
    const/4 v1, 0x5

    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    return-object v0

    .line 235
    :cond_2c
    aput-byte v5, v0, v2

    .line 236
    aput-byte v2, v0, v4

    goto :goto_15
.end method

.method private setSession(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)V
    .registers 6
    .parameter "session"

    .prologue
    const/4 v3, 0x1

    .line 249
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->sessionWasChanged:Z

    if-nez v0, :cond_50

    .line 251
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_2c

    .line 252
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v1, "SSLRecordProtocol.setSession: Set pending session"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  cipher name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 255
    :cond_2c
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 257
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    if-eqz v0, :cond_38

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    aget-byte v0, v0, v3

    if-ne v0, v3, :cond_46

    :cond_38
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)V

    :goto_41
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->pendingConnectionState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    .line 260
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->sessionWasChanged:Z

    .line 265
    :goto_45
    return-void

    .line 257
    :cond_46
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)V

    goto :goto_41

    .line 263
    :cond_50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->sessionWasChanged:Z

    goto :goto_45
.end method


# virtual methods
.method protected alert(BB)V
    .registers 6
    .parameter "level"
    .parameter "description"

    .prologue
    .line 436
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_26

    .line 437
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSLRecordProtocol.allert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 439
    :cond_26
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 440
    return-void
.end method

.method protected getChangeCipherSpecMesage(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)[B
    .registers 9
    .parameter "session"

    .prologue
    const/16 v6, 0x14

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 278
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-nez v1, :cond_42

    .line 279
    const/4 v1, 0x6

    new-array v0, v1, [B

    aput-byte v6, v0, v5

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    aget-byte v1, v1, v5

    aput-byte v1, v0, v4

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    aget-byte v2, v2, v4

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v5, v0, v1

    const/4 v1, 0x4

    aput-byte v4, v0, v1

    const/4 v1, 0x5

    aput-byte v4, v0, v1

    .line 289
    .local v0, change_cipher_spec_message:[B
    :goto_23
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setSession(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)V

    .line 290
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->pendingConnectionState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    .line 291
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v1, :cond_41

    .line 292
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v2, "SSLRecordProtocol.getChangeCipherSpecMesage"

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v2, "activeWriteState = pendingConnectionState"

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 296
    :cond_41
    return-object v0

    .line 284
    .end local v0           #change_cipher_spec_message:[B
    :cond_42
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->change_cipher_spec_byte:[B

    invoke-virtual {v2, v6, v3, v5, v4}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encrypt(B[BII)[B

    move-result-object v2

    invoke-direct {p0, v6, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->packetize(B[B[B)[B

    move-result-object v0

    .restart local v0       #change_cipher_spec_message:[B
    goto :goto_23
.end method

.method protected getDataSize(I)I
    .registers 3
    .parameter "record_size"

    .prologue
    .line 166
    add-int/lit8 p1, p1, -0x5

    .line 167
    const/16 v0, 0x4800

    if-le p1, v0, :cond_9

    .line 169
    const/16 v0, 0x4000

    .line 174
    :goto_8
    return v0

    .line 171
    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-nez v0, :cond_f

    move v0, p1

    .line 172
    goto :goto_8

    .line 174
    :cond_f
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->getContentSize(I)I

    move-result v0

    goto :goto_8
.end method

.method protected getMinRecordSize()I
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-nez v0, :cond_6

    const/4 v0, 0x6

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->getMinFragmentSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    goto :goto_5
.end method

.method protected getRecordSize(I)I
    .registers 5
    .parameter "data_size"

    .prologue
    const/16 v2, 0x4800

    .line 145
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-nez v1, :cond_9

    .line 146
    add-int/lit8 v1, p1, 0x5

    .line 149
    :goto_8
    return v1

    .line 148
    :cond_9
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->getFragmentSize(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x5

    .line 149
    .local v0, res:I
    if-le v0, v2, :cond_15

    move v1, v2

    goto :goto_8

    :cond_15
    move v1, v0

    goto :goto_8
.end method

.method protected getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    return-object v0
.end method

.method protected setVersion([B)V
    .registers 2
    .parameter "ver"

    .prologue
    .line 450
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    .line 451
    return-void
.end method

.method protected shutdown()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 458
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 459
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    .line 460
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    .line 461
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    .line 462
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    .line 463
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->appData:Lorg/apache/harmony/xnet/provider/jsse/Appendable;

    .line 464
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->pendingConnectionState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-eqz v0, :cond_16

    .line 465
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->pendingConnectionState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->shutdown()V

    .line 467
    :cond_16
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->pendingConnectionState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    .line 468
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-eqz v0, :cond_21

    .line 469
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->shutdown()V

    .line 471
    :cond_21
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    .line 472
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-eqz v0, :cond_2c

    .line 473
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->shutdown()V

    .line 475
    :cond_2c
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    .line 476
    return-void
.end method

.method protected unwrap()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x16

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/16 v7, 0xa

    .line 328
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_11

    .line 329
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v4, "SSLRecordProtocol.unwrap: BEGIN ["

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 331
    :cond_11
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->readUint8()I

    move-result v2

    .line 332
    .local v2, type:I
    const/16 v3, 0x14

    if-lt v2, v3, :cond_1f

    const/16 v3, 0x17

    if-le v2, v3, :cond_81

    .line 334
    :cond_1f
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_3b

    .line 335
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non v3.1 message type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 337
    :cond_3b
    const/16 v3, 0x80

    if-lt v2, v3, :cond_63

    .line 341
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v4

    or-int v1, v3, v4

    .line 342
    .local v1, length:I
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    invoke-virtual {v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read(I)[B

    move-result-object v0

    .line 343
    .local v0, fragment:[B
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unwrapSSLv2([B)V

    .line 344
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_61

    .line 345
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v4, "SSLRecordProtocol:unwrap ] END, SSLv2 type"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_61
    move v3, v9

    .line 427
    :goto_62
    return v3

    .line 350
    .end local v0           #fragment:[B
    .end local v1           #length:I
    :cond_63
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v4, Ljavax/net/ssl/SSLProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected message type has been received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7, v4}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v3

    .line 354
    :cond_81
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_9d

    .line 355
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got the message of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 357
    :cond_9d
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    if-eqz v3, :cond_d7

    .line 358
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v3

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_b9

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v3

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    aget-byte v4, v4, v8

    if-eq v3, v4, :cond_de

    .line 360
    :cond_b9
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v4, Ljavax/net/ssl/SSLProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected message type has been received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7, v4}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v3

    .line 366
    :cond_d7
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    const-wide/16 v4, 0x2

    invoke-virtual {v3, v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->skip(J)J

    .line 368
    :cond_de
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->readUint16()I

    move-result v1

    .line 369
    .restart local v1       #length:I
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_106

    .line 370
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TLSCiphertext.fragment["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 372
    :cond_106
    const/16 v3, 0x4800

    if-le v1, v3, :cond_117

    .line 373
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v4, Ljavax/net/ssl/SSLProtocolException;

    const-string v5, "Received message is too big."

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9, v4}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v3

    .line 377
    :cond_117
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    invoke-virtual {v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read(I)[B

    move-result-object v0

    .line 378
    .restart local v0       #fragment:[B
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_126

    .line 379
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 381
    :cond_126
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-eqz v3, :cond_141

    .line 382
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    int-to-byte v4, v2

    invoke-virtual {v3, v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->decrypt(B[B)[B

    move-result-object v0

    .line 383
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_141

    .line 384
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v4, "TLSPlaintext.fragment:"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 385
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 388
    :cond_141
    array-length v3, v0

    const/16 v4, 0x4000

    if-le v3, v4, :cond_155

    .line 389
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v4, 0x1e

    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    const-string v6, "Decompressed plain data is too big."

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v3

    .line 393
    :cond_155
    packed-switch v2, :pswitch_data_1f2

    .line 419
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v4, Ljavax/net/ssl/SSLProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected message type has been received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7, v4}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v3

    .line 396
    :pswitch_176
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->receiveChangeCipherSpec()V

    .line 397
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setSession(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)V

    .line 399
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_18f

    .line 400
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v4, "activeReadState = pendingConnectionState"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 402
    :cond_18f
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->pendingConnectionState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    .line 424
    :goto_193
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_1af

    .line 425
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSLRecordProtocol:unwrap ] END, type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_1af
    move v3, v2

    .line 427
    goto/16 :goto_62

    .line 405
    :pswitch_1b2
    aget-byte v3, v0, v6

    aget-byte v4, v0, v8

    invoke-virtual {p0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->alert(BB)V

    goto :goto_193

    .line 408
    :pswitch_1ba
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unwrap([B)V

    goto :goto_193

    .line 411
    :pswitch_1c0
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_1ec

    .line 412
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TLSCiphertext.unwrap: APP DATA["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 414
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 416
    :cond_1ec
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->appData:Lorg/apache/harmony/xnet/provider/jsse/Appendable;

    invoke-interface {v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/Appendable;->append([B)V

    goto :goto_193

    .line 393
    :pswitch_data_1f2
    .packed-switch 0x14
        :pswitch_176
        :pswitch_1b2
        :pswitch_1ba
        :pswitch_1c0
    .end packed-switch
.end method

.method protected wrap(BLorg/apache/harmony/xnet/provider/jsse/DataStream;)[B
    .registers 6
    .parameter "content_type"
    .parameter "dataStream"

    .prologue
    .line 184
    const/16 v1, 0x4000

    invoke-interface {p2, v1}, Lorg/apache/harmony/xnet/provider/jsse/DataStream;->getData(I)[B

    move-result-object v0

    .line 185
    .local v0, fragment:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->wrap(B[BII)[B

    move-result-object v1

    return-object v1
.end method

.method protected wrap(B[BII)[B
    .registers 12
    .parameter "content_type"
    .parameter "fragment"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/16 v6, 0x4000

    const/16 v5, 0x50

    .line 197
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v1, :cond_2b

    .line 198
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSLRecordProtocol.wrap: TLSPlaintext.fragment["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v1, p2, p3, p4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([BII)V

    .line 202
    :cond_2b
    if-le p4, v6, :cond_55

    .line 203
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The provided chunk of data is too big: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > MAX_DATA_LENGTH == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v1

    .line 209
    :cond_55
    move-object v0, p2

    .line 210
    .local v0, ciphered_fragment:[B
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-eqz v1, :cond_9a

    .line 211
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encrypt(B[BII)[B

    move-result-object v0

    .line 213
    array-length v1, v0

    const/16 v2, 0x4800

    if-le v1, v2, :cond_72

    .line 214
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    const-string v3, "The ciphered data increased more than on 1024 bytes"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v1

    .line 219
    :cond_72
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v1, :cond_9a

    .line 220
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSLRecordProtocol.wrap: TLSCiphertext.fragment["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 225
    :cond_9a
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->packetize(B[B[B)[B

    move-result-object v1

    return-object v1
.end method
