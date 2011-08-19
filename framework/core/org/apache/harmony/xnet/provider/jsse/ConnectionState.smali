.class public abstract Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;
.super Ljava/lang/Object;
.source "ConnectionState.java"


# instance fields
.field protected block_size:I

.field protected decCipher:Ljavax/crypto/Cipher;

.field protected encCipher:Ljavax/crypto/Cipher;

.field protected hash_size:I

.field protected logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

.field protected final read_seq_num:[B

.field protected final write_seq_num:[B


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-array v0, v1, [B

    fill-array-data v0, :array_1c

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->write_seq_num:[B

    .line 58
    new-array v0, v1, [B

    fill-array-data v0, :array_24

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->read_seq_num:[B

    .line 60
    const-string v0, "conn_state"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    return-void

    .line 52
    :array_1c
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 58
    :array_24
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected static incSequenceNumber([B)V
    .registers 3
    .parameter "seq_num"

    .prologue
    .line 151
    const/4 v0, 0x7

    .line 152
    .local v0, octet:I
    :goto_1
    if-ltz v0, :cond_11

    .line 153
    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 154
    aget-byte v1, p0, v0

    if-nez v1, :cond_11

    .line 157
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 162
    :cond_11
    return-void
.end method


# virtual methods
.method protected decrypt(B[B)[B
    .registers 5
    .parameter "type"
    .parameter "fragment"

    .prologue
    .line 132
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->decrypt(B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected abstract decrypt(B[BII)[B
.end method

.method protected encrypt(B[B)[B
    .registers 5
    .parameter "type"
    .parameter "fragment"

    .prologue
    .line 109
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encrypt(B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected abstract encrypt(B[BII)[B
.end method

.method protected getContentSize(I)I
    .registers 4
    .parameter "generic_cipher_size"

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->decCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getFragmentSize(I)I
    .registers 4
    .parameter "content_size"

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encCipher:Ljavax/crypto/Cipher;

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method protected getMinFragmentSize()I
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encCipher:Ljavax/crypto/Cipher;

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method protected getPaddingSize(I)I
    .registers 5
    .parameter "content_size"

    .prologue
    .line 97
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->block_size:I

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 98
    .local v0, mask:I
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->block_size:I

    and-int v2, p1, v0

    sub-int/2addr v1, v2

    return v1
.end method

.method protected shutdown()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 169
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encCipher:Ljavax/crypto/Cipher;

    .line 170
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->decCipher:Ljavax/crypto/Cipher;

    .line 171
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->write_seq_num:[B

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 172
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->write_seq_num:[B

    aput-byte v2, v1, v0

    .line 173
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->read_seq_num:[B

    aput-byte v2, v1, v0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 175
    :cond_17
    return-void
.end method
