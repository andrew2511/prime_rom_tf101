.class public Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "ServerKeyExchange.java"


# instance fields
.field final bytes1:[B

.field final bytes2:[B

.field final bytes3:[B

.field final hash:[B

.field private key:Ljava/security/interfaces/RSAPublicKey;

.field final par1:Ljava/math/BigInteger;

.field final par2:Ljava/math/BigInteger;

.field final par3:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 7
    .parameter "par1"
    .parameter "par2"
    .parameter "par3"
    .parameter "hash"

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    .line 62
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    .line 63
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    .line 64
    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    .line 66
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    .line 68
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    .line 70
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    .line 71
    if-eqz p4, :cond_30

    .line 72
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    array-length v1, p4

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    .line 74
    :cond_30
    if-nez p3, :cond_36

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    .line 80
    :goto_35
    return-void

    .line 78
    :cond_36
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    .line 79
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    goto :goto_35
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;II)V
    .registers 9
    .parameter "in"
    .parameter "length"
    .parameter "keyExchange"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 109
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 111
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    .line 112
    .local v0, size:I
    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    .line 113
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    .line 114
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    .line 115
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    .line 116
    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    .line 117
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    .line 118
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    .line 119
    const/4 v1, 0x2

    if-eq p3, v1, :cond_84

    .line 120
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    .line 121
    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    .line 122
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    .line 123
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    .line 128
    :goto_5c
    const/16 v1, 0xa

    if-eq p3, v1, :cond_89

    const/16 v1, 0x9

    if-eq p3, v1, :cond_89

    .line 130
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    .line 131
    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    .line 132
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    .line 136
    :goto_78
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    if-eq v1, p2, :cond_83

    .line 137
    const/16 v1, 0x32

    const-string v2, "DECODE ERROR: incorrect ServerKeyExchange"

    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->fatalAlert(BLjava/lang/String;)V

    .line 140
    :cond_83
    return-void

    .line 125
    :cond_84
    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    .line 126
    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    goto :goto_5c

    .line 134
    :cond_89
    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    goto :goto_78
.end method

.method public static toUnsignedByteArray(Ljava/math/BigInteger;)[B
    .registers 6
    .parameter "bi"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    if-nez p0, :cond_6

    .line 88
    const/4 v2, 0x0

    .line 97
    :goto_5
    return-object v2

    .line 90
    :cond_6
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 92
    .local v0, bb:[B
    aget-byte v2, v0, v3

    if-nez v2, :cond_18

    .line 93
    array-length v2, v0

    sub-int/2addr v2, v4

    new-array v1, v2, [B

    .line 94
    .local v1, noZero:[B
    array-length v2, v1

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    .line 95
    goto :goto_5

    .end local v1           #noZero:[B
    :cond_18
    move-object v2, v0

    .line 97
    goto :goto_5
.end method


# virtual methods
.method public getRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;
    .registers 6

    .prologue
    .line 169
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->key:Ljava/security/interfaces/RSAPublicKey;

    if-eqz v2, :cond_7

    .line 170
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->key:Ljava/security/interfaces/RSAPublicKey;

    .line 179
    :goto_6
    return-object v2

    .line 173
    :cond_7
    :try_start_7
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 174
    .local v1, kf:Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->key:Ljava/security/interfaces/RSAPublicKey;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1e} :catch_21

    .line 179
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->key:Ljava/security/interfaces/RSAPublicKey;

    goto :goto_6

    .line 176
    .end local v1           #kf:Ljava/security/KeyFactory;
    :catch_21
    move-exception v2

    move-object v0, v2

    .line 177
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_6
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 188
    const/16 v0, 0xc

    return v0
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 149
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 150
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 151
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 152
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    if-eqz v0, :cond_28

    .line 153
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 154
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 156
    :cond_28
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    if-eqz v0, :cond_38

    .line 157
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 158
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 160
    :cond_38
    return-void
.end method
