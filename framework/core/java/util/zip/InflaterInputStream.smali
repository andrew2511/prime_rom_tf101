.class public Ljava/util/zip/InflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "InflaterInputStream.java"


# static fields
.field static final BUF_SIZE:I = 0x200


# instance fields
.field protected buf:[B

.field closed:Z

.field eof:Z

.field protected inf:Ljava/util/zip/Inflater;

.field protected len:I

.field nativeEndBufSize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .parameter "is"

    .prologue
    .line 77
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    .registers 4
    .parameter "is"
    .parameter "inflater"

    .prologue
    .line 90
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V
    .registers 5
    .parameter "is"
    .parameter "inflater"
    .parameter "bsize"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    .line 106
    if-eqz p1, :cond_a

    if-nez p2, :cond_10

    .line 107
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 109
    :cond_10
    if-gtz p3, :cond_18

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 112
    :cond_18
    iput-object p2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    .line 114
    instance-of v0, p1, Ljava/util/zip/ZipFile$RAFStream;

    if-eqz v0, :cond_21

    .line 115
    iput p3, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    .line 120
    :goto_20
    return-void

    .line 117
    :cond_21
    new-array v0, p3, [B

    iput-object v0, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    goto :goto_20
.end method

.method private checkClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-eqz v0, :cond_c

    .line 307
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_c
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
    .line 246
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->checkClosed()V

    .line 247
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    if-eqz v0, :cond_9

    .line 248
    const/4 v0, 0x0

    .line 250
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 261
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-nez v0, :cond_11

    .line 262
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 263
    iput-boolean v1, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    .line 264
    iput-boolean v1, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    .line 265
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 267
    :cond_11
    return-void
.end method

.method protected fill()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->checkClosed()V

    .line 197
    iget v4, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    if-lez v4, :cond_37

    .line 198
    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/util/zip/ZipFile$RAFStream;

    .line 199
    .local v1, is:Ljava/util/zip/ZipFile$RAFStream;
    iget-object v4, v1, Ljava/util/zip/ZipFile$RAFStream;->mSharedRaf:Ljava/io/RandomAccessFile;

    monitor-enter v4

    .line 200
    :try_start_e
    iget-wide v5, v1, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    iget-wide v7, v1, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    sub-long v2, v5, v7

    .line 201
    .local v2, len:J
    iget v5, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    int-to-long v5, v5

    cmp-long v5, v2, v5

    if-lez v5, :cond_1e

    iget v5, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    int-to-long v2, v5

    .line 202
    :cond_1e
    iget-object v5, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v6, v1, Ljava/util/zip/ZipFile$RAFStream;->mSharedRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    iget-wide v7, v1, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    iget v9, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/util/zip/Inflater;->setFileInput(Ljava/io/FileDescriptor;JI)I

    move-result v0

    .line 203
    .local v0, cnt:I
    int-to-long v5, v0

    invoke-virtual {v1, v5, v6}, Ljava/util/zip/ZipFile$RAFStream;->skip(J)J

    .line 204
    monitor-exit v4

    .line 211
    .end local v0           #cnt:I
    .end local v1           #is:Ljava/util/zip/ZipFile$RAFStream;
    .end local v2           #len:J
    :cond_33
    :goto_33
    return-void

    .line 204
    .restart local v1       #is:Ljava/util/zip/ZipFile$RAFStream;
    :catchall_34
    move-exception v5

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_34

    throw v5

    .line 206
    .end local v1           #is:Ljava/util/zip/ZipFile$RAFStream;
    :cond_37
    iget-object v4, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    iput v4, p0, Ljava/util/zip/InflaterInputStream;->len:I

    if-lez v4, :cond_33

    .line 207
    iget-object v4, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v5, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    const/4 v6, 0x0

    iget v7, p0, Ljava/util/zip/InflaterInputStream;->len:I

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_33
.end method

.method public mark(I)V
    .registers 2
    .parameter "readlimit"

    .prologue
    .line 279
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 131
    new-array v0, v1, [B

    .line 132
    .local v0, b:[B
    invoke-virtual {p0, v0, v3, v1}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v1

    if-ne v1, v2, :cond_d

    move v1, v2

    .line 135
    :goto_c
    return v1

    :cond_d
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    goto :goto_c
.end method

.method public read([BII)I
    .registers 9
    .parameter "buffer"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 146
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->checkClosed()V

    .line 147
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 149
    if-nez p3, :cond_d

    .line 150
    const/4 v2, 0x0

    .line 172
    :goto_c
    return v2

    .line 153
    :cond_d
    iget-boolean v2, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    if-eqz v2, :cond_13

    move v2, v3

    .line 154
    goto :goto_c

    .line 158
    :cond_13
    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 159
    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->fill()V

    .line 164
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v1

    .line 165
    .local v1, result:I
    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    iput-boolean v2, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    .line 166
    if-lez v1, :cond_30

    move v2, v1

    .line 167
    goto :goto_c

    .line 168
    :cond_30
    iget-boolean v2, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    if-eqz v2, :cond_36

    move v2, v3

    .line 169
    goto :goto_c

    .line 170
    :cond_36
    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 171
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    move v2, v3

    .line 172
    goto :goto_c

    .line 173
    :cond_43
    iget v2, p0, Ljava/util/zip/InflaterInputStream;->len:I

    if-ne v2, v3, :cond_13

    .line 174
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    .line 175
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
    :try_end_50
    .catch Ljava/util/zip/DataFormatException; {:try_start_1e .. :try_end_50} :catch_50

    .line 178
    .end local v1           #result:I
    :catch_50
    move-exception v2

    move-object v0, v2

    .line 179
    .local v0, e:Ljava/util/zip/DataFormatException;
    iput-boolean v4, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    .line 180
    iget v2, p0, Ljava/util/zip/InflaterInputStream;->len:I

    if-ne v2, v3, :cond_5e

    .line 181
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 183
    :cond_5e
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    check-cast p0, Ljava/io/IOException;

    throw p0
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
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
    .line 223
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_e

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteCount < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_e
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
