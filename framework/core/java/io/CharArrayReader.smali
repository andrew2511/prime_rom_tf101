.class public Ljava/io/CharArrayReader;
.super Ljava/io/Reader;
.source "CharArrayReader.java"


# instance fields
.field protected buf:[C

.field protected count:I

.field protected markedPos:I

.field protected pos:I


# direct methods
.method public constructor <init>([C)V
    .registers 3
    .parameter "buf"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 57
    iput-object p1, p0, Ljava/io/CharArrayReader;->buf:[C

    .line 58
    array-length v0, p1

    iput v0, p0, Ljava/io/CharArrayReader;->count:I

    .line 59
    return-void
.end method

.method public constructor <init>([CII)V
    .registers 6
    .parameter "buf"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 41
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 83
    if-ltz p2, :cond_11

    array-length v1, p1

    if-gt p2, v1, :cond_11

    if-ltz p3, :cond_11

    add-int v1, p2, p3

    if-gez v1, :cond_17

    .line 84
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 86
    :cond_17
    iput-object p1, p0, Ljava/io/CharArrayReader;->buf:[C

    .line 87
    iput p2, p0, Ljava/io/CharArrayReader;->pos:I

    .line 88
    iput p2, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 91
    array-length v0, p1

    .line 92
    .local v0, bufferLength:I
    add-int v1, p2, p3

    if-ge v1, v0, :cond_26

    move v1, p3

    :goto_23
    iput v1, p0, Ljava/io/CharArrayReader;->count:I

    .line 93
    return-void

    :cond_26
    move v1, v0

    .line 92
    goto :goto_23
.end method

.method private checkNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/io/CharArrayReader;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 148
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CharArrayReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_e
    return-void
.end method

.method private isClosed()Z
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isOpen()Z
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/CharArrayReader;->buf:[C

    .line 106
    :cond_c
    monitor-exit v0

    .line 107
    return-void

    .line 106
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public mark(I)V
    .registers 4
    .parameter "readLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    .line 142
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    iput v1, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 143
    monitor-exit v0

    .line 144
    return-void

    .line 143
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 162
    const/4 v0, 0x1

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
    .line 177
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    .line 179
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    if-ne v1, v2, :cond_10

    .line 180
    const/4 v1, -0x1

    monitor-exit v0

    move v0, v1

    .line 182
    :goto_f
    return v0

    :cond_10
    iget-object v1, p0, Ljava/io/CharArrayReader;->buf:[C

    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/CharArrayReader;->pos:I

    aget-char v1, v1, v2

    monitor-exit v0

    move v0, v1

    goto :goto_f

    .line 183
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public read([CII)I
    .registers 8
    .parameter "buffer"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 211
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    :try_start_7
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    .line 213
    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    iget v3, p0, Ljava/io/CharArrayReader;->count:I

    if-ge v2, v3, :cond_2e

    .line 214
    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    add-int/2addr v2, p3

    iget v3, p0, Ljava/io/CharArrayReader;->count:I

    if-le v2, v3, :cond_2c

    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    iget v3, p0, Ljava/io/CharArrayReader;->pos:I

    sub-int/2addr v2, v3

    move v0, v2

    .line 215
    .local v0, bytesRead:I
    :goto_1d
    iget-object v2, p0, Ljava/io/CharArrayReader;->buf:[C

    iget v3, p0, Ljava/io/CharArrayReader;->pos:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Ljava/io/CharArrayReader;->pos:I

    .line 217
    monitor-exit v1

    move v1, v0

    .line 219
    .end local v0           #bytesRead:I
    :goto_2b
    return v1

    :cond_2c
    move v0, p3

    .line 214
    goto :goto_1d

    .line 219
    :cond_2e
    const/4 v2, -0x1

    monitor-exit v1

    move v1, v2

    goto :goto_2b

    .line 220
    :catchall_32
    move-exception v2

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v2
.end method

.method public ready()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    .line 239
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    if-eq v1, v2, :cond_f

    const/4 v1, 0x1

    :goto_d
    monitor-exit v0

    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_d

    .line 240
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public reset()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    .line 256
    iget v1, p0, Ljava/io/CharArrayReader;->markedPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_11

    iget v1, p0, Ljava/io/CharArrayReader;->markedPos:I

    :goto_d
    iput v1, p0, Ljava/io/CharArrayReader;->pos:I

    .line 257
    monitor-exit v0

    .line 258
    return-void

    .line 256
    :cond_11
    const/4 v1, 0x0

    goto :goto_d

    .line 257
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public skip(J)J
    .registers 9
    .parameter "charCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 271
    iget-object v2, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 272
    :try_start_5
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    .line 273
    cmp-long v3, p1, v4

    if-gtz v3, :cond_f

    .line 274
    monitor-exit v2

    move-wide v2, v4

    .line 284
    :goto_e
    return-wide v2

    .line 276
    :cond_f
    const-wide/16 v0, 0x0

    .line 277
    .local v0, skipped:J
    iget v3, p0, Ljava/io/CharArrayReader;->count:I

    iget v4, p0, Ljava/io/CharArrayReader;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_25

    .line 278
    iget v3, p0, Ljava/io/CharArrayReader;->pos:I

    long-to-int v4, p1

    add-int/2addr v3, v4

    iput v3, p0, Ljava/io/CharArrayReader;->pos:I

    .line 279
    move-wide v0, p1

    .line 284
    :goto_22
    monitor-exit v2

    move-wide v2, v0

    goto :goto_e

    .line 281
    :cond_25
    iget v3, p0, Ljava/io/CharArrayReader;->count:I

    iget v4, p0, Ljava/io/CharArrayReader;->pos:I

    sub-int/2addr v3, v4

    int-to-long v0, v3

    .line 282
    iget v3, p0, Ljava/io/CharArrayReader;->count:I

    iput v3, p0, Ljava/io/CharArrayReader;->pos:I

    goto :goto_22

    .line 285
    .end local v0           #skipped:J
    :catchall_30
    move-exception v3

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_30

    throw v3
.end method
