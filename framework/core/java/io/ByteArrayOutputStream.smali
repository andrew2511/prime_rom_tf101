.class public Ljava/io/ByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "ByteArrayOutputStream.java"


# instance fields
.field protected buf:[B

.field protected count:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 48
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "size"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 64
    if-ltz p1, :cond_a

    .line 65
    new-array v0, p1, [B

    iput-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 69
    return-void

    .line 67
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private expand(I)V
    .registers 6
    .parameter "i"

    .prologue
    const/4 v3, 0x0

    .line 89
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length v2, v2

    if-gt v1, v2, :cond_a

    .line 96
    :goto_9
    return-void

    .line 93
    :cond_a
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 94
    .local v0, newbuf:[B
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iput-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    goto :goto_9
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    .line 85
    return-void
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    .line 104
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 105
    monitor-exit p0

    return-void

    .line 104
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    return v0
.end method

.method public declared-synchronized toByteArray()[B
    .registers 6

    .prologue
    .line 124
    monitor-enter p0

    :try_start_1
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    new-array v0, v1, [B

    .line 125
    .local v0, newArray:[B
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 126
    monitor-exit p0

    return-object v0

    .line 124
    .end local v0           #newArray:[B
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 139
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .registers 6
    .parameter "hibyte"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    new-array v1, v2, [C

    .line 159
    .local v1, newBuf:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_1b

    .line 160
    and-int/lit16 v2, p1, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 162
    :cond_1b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized write(I)V
    .registers 5
    .parameter "oneByte"

    .prologue
    .line 217
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_c

    .line 218
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;->expand(I)V

    .line 220
    :cond_c
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 221
    monitor-exit p0

    return-void

    .line 217
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .registers 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 199
    monitor-enter p0

    :try_start_1
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_19

    .line 200
    if-nez p3, :cond_9

    .line 206
    :goto_7
    monitor-exit p0

    return-void

    .line 203
    :cond_9
    :try_start_9
    invoke-direct {p0, p3}, Ljava/io/ByteArrayOutputStream;->expand(I)V

    .line 204
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_19

    goto :goto_7

    .line 199
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .registers 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 234
    monitor-exit p0

    return-void

    .line 233
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
