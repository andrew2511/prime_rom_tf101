.class public Ljavax/crypto/CipherInputStream;
.super Ljava/io/FilterInputStream;
.source "CipherInputStream.java"


# instance fields
.field private final I_BUFFER_SIZE:I

.field private final cipher:Ljavax/crypto/Cipher;

.field private finished:Z

.field private final i_buffer:[B

.field private index:I

.field private o_buffer:[B


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "is"

    .prologue
    .line 73
    new-instance v0, Ljavax/crypto/NullCipher;

    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    invoke-direct {p0, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    .registers 4
    .parameter "is"
    .parameter "c"

    .prologue
    const/16 v0, 0x14

    .line 59
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 39
    iput v0, p0, Ljavax/crypto/CipherInputStream;->I_BUFFER_SIZE:I

    .line 40
    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/CipherInputStream;->i_buffer:[B

    .line 60
    iput-object p2, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    .line 61
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 187
    :try_start_5
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_a
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_a} :catch_b

    .line 192
    :goto_a
    return-void

    .line 188
    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 85
    iget-boolean v2, p0, Ljavax/crypto/CipherInputStream;->finished:Z

    if-eqz v2, :cond_20

    .line 86
    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->o_buffer:[B

    if-eqz v2, :cond_11

    iget v2, p0, Ljavax/crypto/CipherInputStream;->index:I

    iget-object v3, p0, Ljavax/crypto/CipherInputStream;->o_buffer:[B

    array-length v3, v3

    if-ne v2, v3, :cond_13

    :cond_11
    move v2, v4

    .line 108
    :goto_12
    return v2

    .line 86
    :cond_13
    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->o_buffer:[B

    iget v3, p0, Ljavax/crypto/CipherInputStream;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljavax/crypto/CipherInputStream;->index:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    goto :goto_12

    .line 90
    :cond_20
    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->o_buffer:[B

    if-eqz v2, :cond_38

    iget v2, p0, Ljavax/crypto/CipherInputStream;->index:I

    iget-object v3, p0, Ljavax/crypto/CipherInputStream;->o_buffer:[B

    array-length v3, v3

    if-ge v2, v3, :cond_38

    .line 91
    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->o_buffer:[B

    iget v3, p0, Ljavax/crypto/CipherInputStream;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljavax/crypto/CipherInputStream;->index:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    goto :goto_12

    .line 93
    :cond_38
    iput v5, p0, Ljavax/crypto/CipherInputStream;->index:I

    .line 94
    const/4 v2, 0x0

    iput-object v2, p0, Ljavax/crypto/CipherInputStream;->o_buffer:[B

    .line 96
    :goto_3d
    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->o_buffer:[B

    if-nez v2, :cond_56

    .line 97
    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Ljavax/crypto/CipherInputStream;->i_buffer:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, num_read:I
    if-ne v1, v4, :cond_67

    .line 99
    :try_start_4b
    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v2

    iput-object v2, p0, Ljavax/crypto/CipherInputStream;->o_buffer:[B
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_53} :catch_5b

    .line 103
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljavax/crypto/CipherInputStream;->finished:Z

    .line 108
    .end local v1           #num_read:I
    :cond_56
    invoke-virtual {p0}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v2

    goto :goto_12

    .line 100
    .restart local v1       #num_read:I
    :catch_5b
    move-exception v2

    move-object v0, v2

    .line 101
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    .end local v0           #e:Ljava/lang/Exception;
    :cond_67
    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Ljavax/crypto/CipherInputStream;->i_buffer:[B

    invoke-virtual {v2, v3, v5, v1}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v2

    iput-object v2, p0, Ljavax/crypto/CipherInputStream;->o_buffer:[B

    goto :goto_3d
.end method

.method public read([B)I
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 9
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 149
    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->in:Ljava/io/InputStream;

    if-nez v2, :cond_d

    .line 150
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Underlying input stream is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, p3, :cond_26

    .line 156
    invoke-virtual {p0}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v1

    .local v1, read_b:I
    if-ne v1, v4, :cond_1c

    .line 157
    if-nez v0, :cond_1a

    move v2, v4

    .line 163
    .end local v1           #read_b:I
    :goto_19
    return v2

    .restart local v1       #read_b:I
    :cond_1a
    move v2, v0

    .line 157
    goto :goto_19

    .line 159
    :cond_1c
    if-eqz p1, :cond_23

    .line 160
    add-int v2, p2, v0

    int-to-byte v3, v1

    aput-byte v3, p1, v2

    .line 155
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .end local v1           #read_b:I
    :cond_26
    move v2, v0

    .line 163
    goto :goto_19
.end method

.method public skip(J)J
    .registers 5
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
