.class public Ljava/io/BufferedInputStream;
.super Ljava/io/FilterInputStream;
.source "BufferedInputStream.java"


# instance fields
.field protected volatile buf:[B

.field protected count:I

.field protected marklimit:I

.field protected markpos:I

.field protected pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 76
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 5
    .parameter "in"
    .parameter "size"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 93
    if-gtz p2, :cond_10

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_10
    new-array v0, p2, [B

    iput-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 97
    return-void
.end method

.method private fillbuf(Ljava/io/InputStream;[B)I
    .registers 11
    .parameter "localIn"
    .parameter "localBuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 140
    iget v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-eq v4, v6, :cond_f

    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int/2addr v4, v5

    iget v5, p0, Ljava/io/BufferedInputStream;->marklimit:I

    if-lt v4, v5, :cond_22

    .line 142
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 143
    .local v3, result:I
    if-lez v3, :cond_1e

    .line 144
    iput v6, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 145
    iput v7, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 146
    if-ne v3, v6, :cond_20

    move v4, v7

    :goto_1c
    iput v4, p0, Ljava/io/BufferedInputStream;->count:I

    :cond_1e
    move v4, v3

    .line 170
    .end local v3           #result:I
    :goto_1f
    return v4

    .restart local v3       #result:I
    :cond_20
    move v4, v3

    .line 146
    goto :goto_1c

    .line 150
    .end local v3           #result:I
    :cond_22
    iget v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-nez v4, :cond_5a

    iget v4, p0, Ljava/io/BufferedInputStream;->marklimit:I

    array-length v5, p2

    if-le v4, v5, :cond_5a

    .line 152
    array-length v4, p2

    mul-int/lit8 v1, v4, 0x2

    .line 153
    .local v1, newLength:I
    iget v4, p0, Ljava/io/BufferedInputStream;->marklimit:I

    if-le v1, v4, :cond_34

    .line 154
    iget v1, p0, Ljava/io/BufferedInputStream;->marklimit:I

    .line 156
    :cond_34
    new-array v2, v1, [B

    .line 157
    .local v2, newbuf:[B
    array-length v4, p2

    invoke-static {p2, v7, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iput-object v2, p0, Ljava/io/BufferedInputStream;->buf:[B

    move-object p2, v2

    .line 166
    .end local v1           #newLength:I
    .end local v2           #newbuf:[B
    :cond_3d
    :goto_3d
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int/2addr v4, v5

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 167
    iput v7, p0, Ljava/io/BufferedInputStream;->markpos:I

    iput v7, p0, Ljava/io/BufferedInputStream;->count:I

    .line 168
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    array-length v5, p2

    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, p2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 169
    .local v0, bytesread:I
    if-gtz v0, :cond_68

    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    :goto_56
    iput v4, p0, Ljava/io/BufferedInputStream;->count:I

    move v4, v0

    .line 170
    goto :goto_1f

    .line 161
    .end local v0           #bytesread:I
    :cond_5a
    iget v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-lez v4, :cond_3d

    .line 162
    iget v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    array-length v5, p2

    iget v6, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int/2addr v5, v6

    invoke-static {p2, v4, p2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3d

    .line 169
    .restart local v0       #bytesread:I
    :cond_68
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v4, v0

    goto :goto_56
.end method

.method private streamClosed()Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 111
    .local v0, localIn:Ljava/io/InputStream;
    iget-object v1, p0, Ljava/io/BufferedInputStream;->buf:[B

    if-eqz v1, :cond_9

    if-nez v0, :cond_11

    .line 112
    :cond_9
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    .line 110
    .end local v0           #localIn:Ljava/io/InputStream;
    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 114
    .restart local v0       #localIn:Ljava/io/InputStream;
    :cond_11
    :try_start_11
    iget v1, p0, Ljava/io/BufferedInputStream;->count:I

    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_e

    move-result v2

    add-int/2addr v1, v2

    monitor-exit p0

    return v1
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

    .line 130
    iput-object v1, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 131
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 132
    .local v0, localIn:Ljava/io/InputStream;
    iput-object v1, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 133
    if-eqz v0, :cond_c

    .line 134
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 136
    :cond_c
    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 3
    .parameter "readlimit"

    .prologue
    .line 188
    monitor-enter p0

    :try_start_1
    iput p1, p0, Ljava/io/BufferedInputStream;->marklimit:I

    .line 189
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 190
    monitor-exit p0

    return-void

    .line 188
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 220
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 221
    .local v0, localBuf:[B
    iget-object v1, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 222
    .local v1, localIn:Ljava/io/InputStream;
    if-eqz v0, :cond_a

    if-nez v1, :cond_12

    .line 223
    :cond_a
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_f

    .line 220
    .end local v0           #localBuf:[B
    .end local v1           #localIn:Ljava/io/InputStream;
    :catchall_f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 227
    .restart local v0       #localBuf:[B
    .restart local v1       #localIn:Ljava/io/InputStream;
    :cond_12
    :try_start_12
    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v3, p0, Ljava/io/BufferedInputStream;->count:I

    if-lt v2, v3, :cond_21

    invoke-direct {p0, v1, v0}, Ljava/io/BufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_f

    move-result v2

    if-ne v2, v4, :cond_21

    move v2, v4

    .line 242
    :goto_1f
    monitor-exit p0

    return v2

    .line 231
    :cond_21
    :try_start_21
    iget-object v2, p0, Ljava/io/BufferedInputStream;->buf:[B

    if-eq v0, v2, :cond_2e

    .line 232
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 233
    if-nez v0, :cond_2e

    .line 234
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 239
    :cond_2e
    iget v2, p0, Ljava/io/BufferedInputStream;->count:I

    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_40

    .line 240
    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/BufferedInputStream;->pos:I

    aget-byte v2, v0, v2
    :try_end_3d
    .catchall {:try_start_21 .. :try_end_3d} :catchall_f

    and-int/lit16 v2, v2, 0xff

    goto :goto_1f

    :cond_40
    move v2, v4

    .line 242
    goto :goto_1f
.end method

.method public declared-synchronized read([BII)I
    .registers 12
    .parameter "buffer"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 269
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 270
    .local v1, localBuf:[B
    if-nez v1, :cond_e

    .line 271
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v5

    throw v5
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_b

    .line 269
    .end local v1           #localBuf:[B
    :catchall_b
    move-exception v5

    monitor-exit p0

    throw v5

    .line 273
    .restart local v1       #localBuf:[B
    :cond_e
    :try_start_e
    array-length v5, p1

    invoke-static {v5, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_b

    .line 274
    if-nez p3, :cond_17

    .line 275
    const/4 v5, 0x0

    .line 329
    :goto_15
    monitor-exit p0

    return v5

    .line 277
    :cond_17
    :try_start_17
    iget-object v2, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 278
    .local v2, localIn:Ljava/io/InputStream;
    if-nez v2, :cond_20

    .line 279
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 283
    :cond_20
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v6, p0, Ljava/io/BufferedInputStream;->count:I

    if-ge v5, v6, :cond_5d

    .line 285
    iget v5, p0, Ljava/io/BufferedInputStream;->count:I

    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v5, v6

    if-lt v5, p3, :cond_42

    move v0, p3

    .line 286
    .local v0, copylength:I
    :goto_2e
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    invoke-static {v1, v5, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v5, v0

    iput v5, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 288
    if-eq v0, p3, :cond_40

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v5

    if-nez v5, :cond_49

    :cond_40
    move v5, v0

    .line 289
    goto :goto_15

    .line 285
    .end local v0           #copylength:I
    :cond_42
    iget v5, p0, Ljava/io/BufferedInputStream;->count:I

    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v5, v6

    move v0, v5

    goto :goto_2e

    .line 291
    .restart local v0       #copylength:I
    :cond_49
    add-int/2addr p2, v0

    .line 292
    sub-int v4, p3, v0

    .line 303
    .end local v0           #copylength:I
    .local v4, required:I
    :goto_4c
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-ne v5, v7, :cond_62

    array-length v5, v1

    if-lt v4, v5, :cond_62

    .line 304
    invoke-virtual {v2, p1, p2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 305
    .local v3, read:I
    if-ne v3, v7, :cond_8e

    .line 306
    if-ne v4, p3, :cond_5f

    move v5, v7

    goto :goto_15

    .line 294
    .end local v3           #read:I
    .end local v4           #required:I
    :cond_5d
    move v4, p3

    .restart local v4       #required:I
    goto :goto_4c

    .line 306
    .restart local v3       #read:I
    :cond_5f
    sub-int v5, p3, v4

    goto :goto_15

    .line 309
    .end local v3           #read:I
    :cond_62
    invoke-direct {p0, v2, v1}, Ljava/io/BufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v5

    if-ne v5, v7, :cond_6f

    .line 310
    if-ne v4, p3, :cond_6c

    move v5, v7

    goto :goto_15

    :cond_6c
    sub-int v5, p3, v4

    goto :goto_15

    .line 313
    :cond_6f
    iget-object v5, p0, Ljava/io/BufferedInputStream;->buf:[B

    if-eq v1, v5, :cond_7c

    .line 314
    iget-object v1, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 315
    if-nez v1, :cond_7c

    .line 316
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 320
    :cond_7c
    iget v5, p0, Ljava/io/BufferedInputStream;->count:I

    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v5, v6

    if-lt v5, v4, :cond_93

    move v3, v4

    .line 321
    .restart local v3       #read:I
    :goto_84
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    invoke-static {v1, v5, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v5, v3

    iput v5, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 324
    :cond_8e
    sub-int/2addr v4, v3

    .line 325
    if-nez v4, :cond_9a

    move v5, p3

    .line 326
    goto :goto_15

    .line 320
    .end local v3           #read:I
    :cond_93
    iget v5, p0, Ljava/io/BufferedInputStream;->count:I

    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v5, v6

    move v3, v5

    goto :goto_84

    .line 328
    .restart local v3       #read:I
    :cond_9a
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_9d
    .catchall {:try_start_17 .. :try_end_9d} :catchall_b

    move-result v5

    if-nez v5, :cond_a4

    .line 329
    sub-int v5, p3, v4

    goto/16 :goto_15

    .line 331
    :cond_a4
    add-int/2addr p2, v3

    .line 332
    goto :goto_4c
.end method

.method public declared-synchronized reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    if-nez v0, :cond_10

    .line 353
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 352
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 355
    :cond_10
    const/4 v0, -0x1

    :try_start_11
    iget v1, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-ne v0, v1, :cond_1d

    .line 356
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark has been invalidated."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_1d
    iget v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    iput v0, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_d

    .line 360
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized skip(J)J
    .registers 11
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 378
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 379
    .local v0, localBuf:[B
    iget-object v1, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 380
    .local v1, localIn:Ljava/io/InputStream;
    if-nez v0, :cond_10

    .line 381
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v4

    throw v4
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_d

    .line 378
    .end local v0           #localBuf:[B
    .end local v1           #localIn:Ljava/io/InputStream;
    :catchall_d
    move-exception v4

    monitor-exit p0

    throw v4

    .line 383
    .restart local v0       #localBuf:[B
    .restart local v1       #localIn:Ljava/io/InputStream;
    :cond_10
    const-wide/16 v4, 0x1

    cmp-long v4, p1, v4

    if-gez v4, :cond_1a

    .line 384
    const-wide/16 v4, 0x0

    .line 412
    :goto_18
    monitor-exit p0

    return-wide v4

    .line 386
    :cond_1a
    if-nez v1, :cond_21

    .line 387
    :try_start_1c
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 390
    :cond_21
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v4, v4, p1

    if-ltz v4, :cond_34

    .line 391
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, p1

    long-to-int v4, v4

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    move-wide v4, p1

    .line 392
    goto :goto_18

    .line 394
    :cond_34
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v2, v4

    .line 395
    .local v2, read:J
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 397
    iget v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-eq v4, v6, :cond_75

    .line 398
    iget v4, p0, Ljava/io/BufferedInputStream;->marklimit:I

    int-to-long v4, v4

    cmp-long v4, p1, v4

    if-gtz v4, :cond_75

    .line 399
    invoke-direct {p0, v1, v0}, Ljava/io/BufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v4

    if-ne v4, v6, :cond_51

    move-wide v4, v2

    .line 400
    goto :goto_18

    .line 402
    :cond_51
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long v6, p1, v2

    cmp-long v4, v4, v6

    if-ltz v4, :cond_68

    .line 403
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    int-to-long v4, v4

    sub-long v6, p1, v2

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    move-wide v4, p1

    .line 404
    goto :goto_18

    .line 407
    :cond_68
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 408
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    move-wide v4, v2

    .line 409
    goto :goto_18

    .line 412
    :cond_75
    sub-long v4, p1, v2

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J
    :try_end_7a
    .catchall {:try_start_1c .. :try_end_7a} :catchall_d

    move-result-wide v4

    add-long/2addr v4, v2

    goto :goto_18
.end method
