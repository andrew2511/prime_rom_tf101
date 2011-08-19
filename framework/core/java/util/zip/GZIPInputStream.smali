.class public Ljava/util/zip/GZIPInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "GZIPInputStream.java"


# static fields
.field private static final FCOMMENT:I = 0x10

.field private static final FEXTRA:I = 0x4

.field private static final FHCRC:I = 0x2

.field private static final FNAME:I = 0x8

.field public static final GZIP_MAGIC:I = 0x8b1f


# instance fields
.field protected crc:Ljava/util/zip/CRC32;

.field protected eos:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 16
    .parameter "is"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 96
    new-instance v8, Ljava/util/zip/Inflater;

    invoke-direct {v8, v10}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, p1, v8, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 64
    new-instance v8, Ljava/util/zip/CRC32;

    invoke-direct {v8}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v8, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    .line 69
    iput-boolean v12, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    .line 97
    const/16 v8, 0xa

    new-array v3, v8, [B

    .line 98
    .local v3, header:[B
    array-length v8, v3

    invoke-direct {p0, v3, v12, v8}, Ljava/util/zip/GZIPInputStream;->readFully([BII)V

    .line 99
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v12, v8}, Lorg/apache/harmony/luni/platform/OSMemory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v5

    .line 100
    .local v5, magic:S
    const/16 v8, -0x74e1

    if-eq v5, v8, :cond_3a

    .line 101
    new-instance v8, Ljava/io/IOException;

    const-string v9, "unknown format (magic number %x)"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 103
    :cond_3a
    const/4 v8, 0x3

    aget-byte v1, v3, v8

    .line 104
    .local v1, flags:I
    and-int/lit8 v8, v1, 0x2

    if-eqz v8, :cond_7f

    move v2, v10

    .line 105
    .local v2, hcrc:Z
    :goto_42
    if-eqz v2, :cond_4a

    .line 106
    iget-object v8, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    array-length v9, v3

    invoke-virtual {v8, v3, v12, v9}, Ljava/util/zip/CRC32;->update([BII)V

    .line 108
    :cond_4a
    and-int/lit8 v8, v1, 0x4

    if-eqz v8, :cond_8e

    .line 109
    invoke-direct {p0, v3, v12, v11}, Ljava/util/zip/GZIPInputStream;->readFully([BII)V

    .line 110
    if-eqz v2, :cond_58

    .line 111
    iget-object v8, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v8, v3, v12, v11}, Ljava/util/zip/CRC32;->update([BII)V

    .line 113
    :cond_58
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v12, v8}, Lorg/apache/harmony/luni/platform/OSMemory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v8

    const v9, 0xffff

    and-int v4, v8, v9

    .line 114
    .local v4, length:I
    :goto_63
    if-lez v4, :cond_8e

    .line 115
    iget-object v8, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    array-length v8, v8

    if-le v4, v8, :cond_81

    iget-object v8, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    array-length v8, v8

    move v6, v8

    .line 116
    .local v6, max:I
    :goto_6e
    iget-object v8, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    iget-object v9, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    invoke-virtual {v8, v9, v12, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 117
    .local v7, result:I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_83

    .line 118
    new-instance v8, Ljava/io/EOFException;

    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    throw v8

    .end local v2           #hcrc:Z
    .end local v4           #length:I
    .end local v6           #max:I
    .end local v7           #result:I
    :cond_7f
    move v2, v12

    .line 104
    goto :goto_42

    .restart local v2       #hcrc:Z
    .restart local v4       #length:I
    :cond_81
    move v6, v4

    .line 115
    goto :goto_6e

    .line 120
    .restart local v6       #max:I
    .restart local v7       #result:I
    :cond_83
    if-eqz v2, :cond_8c

    .line 121
    iget-object v8, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    iget-object v9, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    invoke-virtual {v8, v9, v12, v7}, Ljava/util/zip/CRC32;->update([BII)V

    .line 123
    :cond_8c
    sub-int/2addr v4, v7

    .line 124
    goto :goto_63

    .line 126
    .end local v4           #length:I
    .end local v6           #max:I
    .end local v7           #result:I
    :cond_8e
    and-int/lit8 v8, v1, 0x8

    if-eqz v8, :cond_95

    .line 127
    invoke-direct {p0, v2}, Ljava/util/zip/GZIPInputStream;->readZeroTerminated(Z)V

    .line 129
    :cond_95
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_9c

    .line 130
    invoke-direct {p0, v2}, Ljava/util/zip/GZIPInputStream;->readZeroTerminated(Z)V

    .line 132
    :cond_9c
    if-eqz v2, :cond_be

    .line 133
    invoke-direct {p0, v3, v12, v11}, Ljava/util/zip/GZIPInputStream;->readFully([BII)V

    .line 134
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v12, v8}, Lorg/apache/harmony/luni/platform/OSMemory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    .line 135
    .local v0, crc16:S
    iget-object v8, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    long-to-int v8, v8

    int-to-short v8, v8

    if-eq v8, v0, :cond_b9

    .line 136
    new-instance v8, Ljava/io/IOException;

    const-string v9, "CRC mismatch"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 138
    :cond_b9
    iget-object v8, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v8}, Ljava/util/zip/CRC32;->reset()V

    .line 140
    .end local v0           #crc16:S
    :cond_be
    return-void
.end method

.method private readFully([BII)V
    .registers 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    :goto_0
    if-lez p3, :cond_14

    .line 204
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 205
    .local v0, result:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 206
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 208
    :cond_11
    add-int/2addr p2, v0

    .line 209
    sub-int/2addr p3, v0

    goto :goto_0

    .line 211
    .end local v0           #result:I
    :cond_14
    return-void
.end method

.method private readZeroTerminated(Z)V
    .registers 4
    .parameter "hcrc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, result:I
    if-lez v0, :cond_10

    .line 216
    if-eqz p1, :cond_0

    .line 217
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update(I)V

    goto :goto_0

    .line 220
    :cond_10
    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 221
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 224
    :cond_19
    if-eqz p1, :cond_20

    .line 225
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update(I)V

    .line 227
    :cond_20
    return-void
.end method

.method private verifyCrc()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 185
    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    .line 186
    .local v2, size:I
    const/16 v3, 0x8

    .line 187
    .local v3, trailerSize:I
    new-array v0, v6, [B

    .line 188
    .local v0, b:[B
    if-le v2, v6, :cond_34

    move v1, v6

    .line 190
    .local v1, copySize:I
    :goto_10
    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    iget v5, p0, Ljava/util/zip/GZIPInputStream;->len:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    sub-int v4, v6, v1

    invoke-direct {p0, v0, v1, v4}, Ljava/util/zip/GZIPInputStream;->readFully([BII)V

    .line 193
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v7, v4}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v4

    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    long-to-int v5, v5

    if-eq v4, v5, :cond_36

    .line 194
    new-instance v4, Ljava/io/IOException;

    const-string v5, "CRC mismatch"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v1           #copySize:I
    :cond_34
    move v1, v2

    .line 188
    goto :goto_10

    .line 196
    .restart local v1       #copySize:I
    :cond_36
    const/4 v4, 0x4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v4, v5}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v4

    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getTotalOut()I

    move-result v5

    if-eq v4, v5, :cond_4d

    .line 197
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Size mismatch"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 199
    :cond_4d
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    .line 148
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 149
    return-void
.end method

.method public read([BII)I
    .registers 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 157
    iget-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->closed:Z

    if-eqz v1, :cond_d

    .line 158
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_d
    iget-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    if-eqz v1, :cond_13

    move v1, v2

    .line 180
    :goto_12
    return v1

    .line 163
    :cond_13
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 167
    :try_start_17
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_2f

    move-result v0

    .line 169
    .local v0, bytesRead:I
    iget-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eof:Z

    iput-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    .line 172
    if-eq v0, v2, :cond_26

    .line 173
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1, p1, p2, v0}, Ljava/util/zip/CRC32;->update([BII)V

    .line 176
    :cond_26
    iget-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    if-eqz v1, :cond_2d

    .line 177
    invoke-direct {p0}, Ljava/util/zip/GZIPInputStream;->verifyCrc()V

    :cond_2d
    move v1, v0

    .line 180
    goto :goto_12

    .line 169
    .end local v0           #bytesRead:I
    :catchall_2f
    move-exception v1

    iget-boolean v2, p0, Ljava/util/zip/GZIPInputStream;->eof:Z

    iput-boolean v2, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    throw v1
.end method
