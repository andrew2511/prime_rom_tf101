.class public Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;
.super Lorg/apache/james/mime4j/io/LineReaderInputStream;
.source "BufferedLineReaderInputStream.java"


# instance fields
.field private buffer:[B

.field private buflen:I

.field private bufpos:I

.field private final maxLineLen:I

.field private truncated:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .parameter "instream"
    .parameter "buffersize"

    .prologue
    .line 63
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 2
    .parameter "instream"
    .parameter "buffersize"
    .parameter "maxLineLen"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/io/LineReaderInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    if-gtz p2, :cond_1

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size may not be negative or zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    .line 54
    iput v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 55
    iput v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    .line 56
    iput p3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->maxLineLen:I

    .line 57
    iput-boolean v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->truncated:Z

    .line 58
    return-void
.end method

.method private expand(I)V
    .locals 5
    .parameter "newlen"

    .prologue
    .line 67
    new-array v1, p1, [B

    .line 68
    .local v1, newbuffer:[B
    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    iget v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    sub-int v0, v2, v3

    .line 69
    .local v0, len:I
    if-lez v0, :cond_0

    .line 70
    iget-object v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    iget v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    iget v4, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    :cond_0
    iput-object v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    .line 73
    return-void
.end method


# virtual methods
.method public buf()[B
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method public charAt(I)B
    .locals 1
    .parameter "pos"

    .prologue
    .line 291
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    if-le p1, v0, :cond_1

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 294
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 324
    iput v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 325
    iput v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    .line 326
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 1
    .parameter "len"

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 77
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->expand(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public fillBuffer()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 83
    iget v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    if-lez v3, :cond_1

    .line 84
    iget v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    iget v4, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    sub-int v1, v3, v4

    .line 85
    .local v1, len:I
    if-lez v1, :cond_0

    .line 86
    iget-object v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    iget v4, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    iget-object v5, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    invoke-static {v3, v4, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    :cond_0
    iput v7, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 89
    iput v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    .line 92
    .end local v1           #len:I
    :cond_1
    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    .line 93
    .local v2, off:I
    iget-object v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    array-length v3, v3

    sub-int v1, v3, v2

    .line 94
    .restart local v1       #len:I
    iget-object v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    invoke-virtual {v3, v4, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 95
    .local v0, l:I
    if-ne v0, v6, :cond_2

    move v3, v6

    .line 99
    :goto_0
    return v3

    .line 98
    :cond_2
    add-int v3, v2, v0

    iput v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    move v3, v0

    .line 99
    goto :goto_0
.end method

.method public hasBufferedData()Z
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexOf(B)I
    .locals 3
    .parameter "b"

    .prologue
    .line 287
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->indexOf(BII)I

    move-result v0

    return v0
.end method

.method public indexOf(BII)I
    .locals 3
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 275
    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    if-lt p2, v1, :cond_0

    if-ltz p3, :cond_0

    add-int v1, p2, p3

    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    if-le v1, v2, :cond_1

    .line 276
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 278
    :cond_1
    move v0, p2

    .local v0, i:I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_3

    .line 279
    iget-object v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    aget-byte v1, v1, v0

    if-ne v1, p1, :cond_2

    move v1, v0

    .line 283
    :goto_1
    return v1

    .line 278
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public indexOf([B)I
    .locals 3
    .parameter "pattern"

    .prologue
    .line 271
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->indexOf([BII)I

    move-result v0

    return v0
.end method

.method public indexOf([BII)I
    .locals 10
    .parameter "pattern"
    .parameter "off"
    .parameter "len"

    .prologue
    const/4 v9, -0x1

    .line 219
    if-nez p1, :cond_0

    .line 220
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Pattern may not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 222
    :cond_0
    iget v7, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    if-lt p2, v7, :cond_1

    if-ltz p3, :cond_1

    add-int v7, p2, p3

    iget v8, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    if-le v7, v8, :cond_2

    .line 223
    :cond_1
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7

    .line 225
    :cond_2
    array-length v7, p1

    if-ge p3, v7, :cond_3

    move v7, v9

    .line 259
    :goto_0
    return v7

    .line 229
    :cond_3
    const/16 v7, 0x100

    new-array v5, v7, [I

    .line 230
    .local v5, shiftTable:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v7, v5

    if-ge v1, v7, :cond_4

    .line 231
    array-length v7, p1

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v1

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 233
    :cond_4
    const/4 v1, 0x0

    :goto_2
    array-length v7, p1

    if-ge v1, v7, :cond_5

    .line 234
    aget-byte v7, p1, v1

    and-int/lit16 v6, v7, 0xff

    .line 235
    .local v6, x:I
    array-length v7, p1

    sub-int/2addr v7, v1

    aput v7, v5, v6

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 238
    .end local v6           #x:I
    :cond_5
    const/4 v2, 0x0

    .line 239
    .local v2, j:I
    :goto_3
    array-length v7, p1

    sub-int v7, p3, v7

    if-gt v2, v7, :cond_9

    .line 240
    add-int v0, p2, v2

    .line 241
    .local v0, cur:I
    const/4 v3, 0x1

    .line 242
    .local v3, match:Z
    const/4 v1, 0x0

    :goto_4
    array-length v7, p1

    if-ge v1, v7, :cond_6

    .line 243
    iget-object v7, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    add-int v8, v0, v1

    aget-byte v7, v7, v8

    aget-byte v8, p1, v1

    if-eq v7, v8, :cond_7

    .line 244
    const/4 v3, 0x0

    .line 248
    :cond_6
    if-eqz v3, :cond_8

    move v7, v0

    .line 249
    goto :goto_0

    .line 242
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 252
    :cond_8
    array-length v7, p1

    add-int v4, v0, v7

    .line 253
    .local v4, pos:I
    iget-object v7, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    array-length v7, v7

    if-lt v4, v7, :cond_a

    .end local v0           #cur:I
    .end local v3           #match:Z
    .end local v4           #pos:I
    :cond_9
    move v7, v9

    .line 259
    goto :goto_0

    .line 256
    .restart local v0       #cur:I
    .restart local v3       #match:Z
    .restart local v4       #pos:I
    :cond_a
    iget-object v7, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    aget-byte v7, v7, v4

    and-int/lit16 v6, v7, 0xff

    .line 257
    .restart local v6       #x:I
    aget v7, v5, v6

    add-int/2addr v2, v7

    .line 258
    goto :goto_3
.end method

.method public length()I
    .locals 2

    .prologue
    .line 310
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public limit()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    return v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public pos()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 114
    iget-boolean v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->truncated:Z

    if-eqz v1, :cond_0

    move v1, v2

    .line 124
    :goto_0
    return v1

    .line 117
    :cond_0
    const/4 v0, 0x0

    .line 118
    .local v0, noRead:I
    :cond_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->hasBufferedData()Z

    move-result v1

    if-nez v1, :cond_2

    .line 119
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->fillBuffer()I

    move-result v0

    .line 120
    if-ne v0, v2, :cond_1

    move v1, v2

    .line 121
    goto :goto_0

    .line 124
    :cond_2
    iget-object v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->truncated:Z

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, -0x1

    .line 159
    :goto_0
    return v0

    .line 156
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    .line 157
    goto :goto_0

    .line 159
    :cond_1
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 129
    iget-boolean v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->truncated:Z

    if-eqz v2, :cond_0

    move v2, v3

    .line 148
    :goto_0
    return v2

    .line 132
    :cond_0
    if-nez p1, :cond_1

    .line 133
    const/4 v2, 0x0

    goto :goto_0

    .line 135
    :cond_1
    const/4 v1, 0x0

    .line 136
    .local v1, noRead:I
    :cond_2
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->hasBufferedData()Z

    move-result v2

    if-nez v2, :cond_3

    .line 137
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->fillBuffer()I

    move-result v1

    .line 138
    if-ne v1, v3, :cond_2

    move v2, v3

    .line 139
    goto :goto_0

    .line 142
    :cond_3
    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    iget v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    sub-int v0, v2, v3

    .line 143
    .local v0, chunk:I
    if-le v0, p3, :cond_4

    .line 144
    move v0, p3

    .line 146
    :cond_4
    iget-object v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    iget v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    move v2, v0

    .line 148
    goto :goto_0
.end method

.method public readLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I
    .locals 8
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 170
    if-nez p1, :cond_0

    .line 171
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Buffer may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 173
    :cond_0
    iget-boolean v5, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->truncated:Z

    if-eqz v5, :cond_1

    move v5, v7

    .line 206
    :goto_0
    return v5

    .line 176
    :cond_1
    const/4 v4, 0x0

    .line 177
    .local v4, total:I
    const/4 v2, 0x0

    .line 178
    .local v2, found:Z
    const/4 v0, 0x0

    .line 179
    .local v0, bytesRead:I
    :cond_2
    if-nez v2, :cond_3

    .line 180
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->hasBufferedData()Z

    move-result v5

    if-nez v5, :cond_4

    .line 181
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->fillBuffer()I

    move-result v0

    .line 182
    if-ne v0, v7, :cond_4

    .line 203
    :cond_3
    if-nez v4, :cond_7

    if-ne v0, v7, :cond_7

    move v5, v7

    .line 204
    goto :goto_0

    .line 186
    :cond_4
    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->indexOf(B)I

    move-result v3

    .line 188
    .local v3, i:I
    if-eq v3, v7, :cond_6

    .line 189
    const/4 v2, 0x1

    .line 190
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v6

    sub-int v1, v5, v6

    .line 194
    .local v1, chunk:I
    :goto_1
    if-lez v1, :cond_5

    .line 195
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buf()[B

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v6

    invoke-virtual {p1, v5, v6, v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append([BII)V

    .line 196
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)I

    .line 197
    add-int/2addr v4, v1

    .line 199
    :cond_5
    iget v5, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->maxLineLen:I

    if-lez v5, :cond_2

    invoke-virtual {p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v5

    iget v6, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->maxLineLen:I

    if-lt v5, v6, :cond_2

    .line 200
    new-instance v5, Lorg/apache/james/mime4j/io/MaxLineLimitException;

    const-string v6, "Maximum line length limit exceeded"

    invoke-direct {v5, v6}, Lorg/apache/james/mime4j/io/MaxLineLimitException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 192
    .end local v1           #chunk:I
    :cond_6
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->length()I

    move-result v1

    .restart local v1       #chunk:I
    goto :goto_1

    .end local v1           #chunk:I
    .end local v3           #i:I
    :cond_7
    move v5, v4

    .line 206
    goto :goto_0
.end method

.method public skip(I)I
    .locals 3
    .parameter "n"

    .prologue
    .line 318
    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 319
    .local v0, chunk:I
    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 320
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v2, "[pos: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 333
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v2, "[limit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .local v1, i:I
    :goto_0
    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    if-ge v1, v2, :cond_0

    .line 339
    iget-object v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    aget-byte v2, v2, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_0
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public truncate()V
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->clear()V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->truncated:Z

    .line 110
    return-void
.end method
