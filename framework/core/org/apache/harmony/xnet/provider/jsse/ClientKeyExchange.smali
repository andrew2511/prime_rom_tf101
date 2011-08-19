.class public Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "ClientKeyExchange.java"


# instance fields
.field final exchange_keys:[B

.field final isRSA:Z

.field isTLS:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 83
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    .line 84
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->length:I

    .line 85
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isRSA:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 7
    .parameter "dh_Yc"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 67
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 68
    .local v0, bb:[B
    aget-byte v1, v0, v3

    if-nez v1, :cond_25

    .line 69
    array-length v1, v0

    sub-int/2addr v1, v4

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    .line 70
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    :goto_1b
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->length:I

    .line 75
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isRSA:Z

    .line 76
    return-void

    .line 72
    :cond_25
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    goto :goto_1b
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;IZZ)V
    .registers 8
    .parameter "in"
    .parameter "length"
    .parameter "isTLS"
    .parameter "isRSA"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 97
    iput-boolean p3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isTLS:Z

    .line 98
    iput-boolean p4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isRSA:Z

    .line 99
    if-nez p2, :cond_11

    .line 100
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->length:I

    .line 101
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    .line 117
    :cond_10
    :goto_10
    return-void

    .line 104
    :cond_11
    if-eqz p4, :cond_2d

    if-nez p3, :cond_2d

    .line 105
    move v0, p2

    .line 106
    .local v0, size:I
    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->length:I

    .line 111
    :goto_18
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    .line 112
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    invoke-virtual {p1, v1, v2, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read([BII)I

    .line 113
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->length:I

    if-eq v1, p2, :cond_10

    .line 114
    const/16 v1, 0x32

    const-string v2, "DECODE ERROR: incorrect ClientKeyExchange"

    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->fatalAlert(BLjava/lang/String;)V

    goto :goto_10

    .line 108
    .end local v0           #size:I
    :cond_2d
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    .line 109
    .restart local v0       #size:I
    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->length:I

    goto :goto_18
.end method

.method public constructor <init>([BZ)V
    .registers 4
    .parameter "encrypted_pre_master_secret"
    .parameter "isTLS"

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    .line 54
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v0, v0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->length:I

    .line 55
    if-eqz p2, :cond_12

    .line 56
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->length:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->length:I

    .line 58
    :cond_12
    iput-boolean p2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isTLS:Z

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isRSA:Z

    .line 60
    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 139
    const/16 v0, 0x10

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v0, v0

    if-eqz v0, :cond_19

    .line 126
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isRSA:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isTLS:Z

    if-eqz v0, :cond_14

    .line 127
    :cond_d
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 129
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 131
    :cond_19
    return-void
.end method
