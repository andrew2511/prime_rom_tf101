.class public Lorg/apache/harmony/xnet/provider/jsse/ServerHello;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "ServerHello.java"


# instance fields
.field cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

.field compression_method:B

.field random:[B

.field server_version:[B

.field session_id:[B


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;[B[BLorg/apache/harmony/xnet/provider/jsse/CipherSuite;B)V
    .registers 14
    .parameter "sr"
    .parameter "server_version"
    .parameter "session_id"
    .parameter "cipher_suite"
    .parameter "compression_method"

    .prologue
    const/4 v7, 0x2

    .line 65
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 34
    new-array v2, v7, [B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    .line 39
    const/16 v2, 0x20

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    .line 66
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 67
    .local v0, gmt_unix_time:J
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    invoke-virtual {p1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 68
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    const/4 v3, 0x0

    const-wide/32 v4, -0x1000000

    and-long/2addr v4, v0

    const/16 v6, 0x18

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 69
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    const/4 v3, 0x1

    const-wide/32 v4, 0xff0000

    and-long/2addr v4, v0

    const/16 v6, 0x10

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 70
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    const-wide/32 v3, 0xff00

    and-long/2addr v3, v0

    const/16 v5, 0x8

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    .line 71
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    const/4 v3, 0x3

    const-wide/16 v4, 0xff

    and-long/2addr v4, v0

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 72
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    .line 73
    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 74
    iput-byte p5, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->compression_method:B

    .line 75
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    .line 76
    array-length v2, p3

    add-int/lit8 v2, v2, 0x26

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->length:I

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V
    .registers 11
    .parameter "in"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x0

    .line 85
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 34
    const/4 v3, 0x2

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    .line 39
    new-array v3, v7, [B

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    .line 87
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    .line 88
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    const/4 v4, 0x1

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 89
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    invoke-virtual {p1, v3, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read([BII)I

    .line 90
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint8()I

    move-result v2

    .line 91
    .local v2, size:I
    new-array v3, v2, [B

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    .line 92
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    invoke-virtual {p1, v3, v6, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read([BII)I

    .line 93
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v3

    int-to-byte v0, v3

    .line 94
    .local v0, b0:B
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v3

    int-to-byte v1, v3

    .line 95
    .local v1, b1:B
    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getByCode(BB)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 96
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->compression_method:B

    .line 97
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x26

    iput v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->length:I

    .line 98
    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->length:I

    if-eq v3, p2, :cond_5d

    .line 99
    const/16 v3, 0x32

    const-string v4, "DECODE ERROR: incorrect ServerHello"

    invoke-virtual {p0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->fatalAlert(BLjava/lang/String;)V

    .line 102
    :cond_5d
    return-void
.end method


# virtual methods
.method public getRandom()[B
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x2

    return v0
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 111
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 112
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint8(J)V

    .line 113
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 114
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->toBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 115
    iget-byte v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->compression_method:B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write(B)V

    .line 116
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x26

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->length:I

    .line 117
    return-void
.end method
