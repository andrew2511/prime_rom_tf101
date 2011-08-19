.class public Ljava/io/PushbackInputStream;
.super Ljava/io/FilterInputStream;
.source "PushbackInputStream.java"


# instance fields
.field protected buf:[B

.field protected pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    .line 55
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 56
    if-nez p1, :cond_c

    const/4 v0, 0x0

    :goto_7
    iput-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    .line 57
    iput v1, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 58
    return-void

    .line 56
    :cond_c
    new-array v0, v1, [B

    goto :goto_7
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 5
    .parameter "in"
    .parameter "size"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    if-gtz p2, :cond_d

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_d
    if-nez p1, :cond_15

    const/4 v0, 0x0

    :goto_10
    iput-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    .line 81
    iput p2, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 82
    return-void

    .line 80
    :cond_15
    new-array v0, p2, [B

    goto :goto_10
.end method

.method private streamClosed()Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PushbackInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    if-nez v0, :cond_a

    .line 87
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 89
    :cond_a
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_e

    .line 102
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 103
    iput-object v1, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    .line 104
    iput-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    .line 106
    :cond_e
    return-void
.end method

.method public mark(I)V
    .registers 2
    .parameter "readlimit"

    .prologue
    .line 331
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    if-nez v0, :cond_a

    .line 138
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 141
    :cond_a
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    iget-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1e

    .line 142
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/PushbackInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 146
    :goto_1d
    return v0

    :cond_1e
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_1d
.end method

.method public read([BII)I
    .registers 10
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v4, p0, Ljava/io/PushbackInputStream;->buf:[B

    if-nez v4, :cond_9

    .line 178
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 180
    :cond_9
    array-length v4, p1

    invoke-static {v4, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 181
    const/4 v0, 0x0

    .local v0, copiedBytes:I
    const/4 v1, 0x0

    .local v1, copyLength:I
    move v3, p2

    .line 183
    .local v3, newOffset:I
    iget v4, p0, Ljava/io/PushbackInputStream;->pos:I

    iget-object v5, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v5, v5

    if-ge v4, v5, :cond_2e

    .line 184
    iget-object v4, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v4, v4

    iget v5, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v4, v5

    if-lt v4, p3, :cond_32

    move v1, p3

    .line 186
    :goto_20
    iget-object v4, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v5, p0, Ljava/io/PushbackInputStream;->pos:I

    invoke-static {v4, v5, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    add-int/2addr v3, v1

    .line 188
    add-int/2addr v0, v1

    .line 190
    iget v4, p0, Ljava/io/PushbackInputStream;->pos:I

    add-int/2addr v4, v1

    iput v4, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 193
    :cond_2e
    if-ne v1, p3, :cond_3a

    move v4, p3

    .line 203
    :goto_31
    return v4

    .line 184
    :cond_32
    iget-object v4, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v4, v4

    iget v5, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v4, v5

    move v1, v4

    goto :goto_20

    .line 196
    :cond_3a
    iget-object v4, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    sub-int v5, p3, v0

    invoke-virtual {v4, p1, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 197
    .local v2, inCopied:I
    if-lez v2, :cond_47

    .line 198
    add-int v4, v2, v0

    goto :goto_31

    .line 200
    :cond_47
    if-nez v0, :cond_4b

    move v4, v2

    .line 201
    goto :goto_31

    :cond_4b
    move v4, v0

    .line 203
    goto :goto_31
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .registers 9
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 220
    iget-object v1, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    if-nez v1, :cond_b

    .line 221
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 223
    :cond_b
    cmp-long v1, p1, v2

    if-gtz v1, :cond_11

    move-wide v1, v2

    .line 234
    :goto_10
    return-wide v1

    .line 226
    :cond_11
    const/4 v0, 0x0

    .line 227
    .local v0, numSkipped:I
    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    iget-object v2, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_2d

    .line 228
    int-to-long v1, v0

    iget-object v3, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v3, v3

    iget v4, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_40

    move-wide v3, p1

    :goto_26
    add-long/2addr v1, v3

    long-to-int v0, v1

    .line 229
    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 231
    :cond_2d
    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-gez v1, :cond_3e

    .line 232
    int-to-long v1, v0

    iget-object v3, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    int-to-long v4, v0

    sub-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v0, v1

    .line 234
    :cond_3e
    int-to-long v1, v0

    goto :goto_10

    .line 228
    :cond_40
    iget-object v3, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v3, v3

    iget v4, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    goto :goto_26
.end method

.method public unread(I)V
    .registers 5
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    if-nez v0, :cond_a

    .line 313
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 315
    :cond_a
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    if-nez v0, :cond_16

    .line 316
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pushback buffer full"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_16
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/io/PushbackInputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 319
    return-void
.end method

.method public unread([B)V
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 255
    return-void
.end method

.method public unread([BII)V
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
    .line 284
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    if-le p3, v0, :cond_c

    .line 285
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pushback buffer full"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_c
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 288
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    if-nez v0, :cond_19

    .line 289
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 292
    :cond_19
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v1, p3

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v0, p3

    iput v0, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 294
    return-void
.end method
