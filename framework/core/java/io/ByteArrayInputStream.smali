.class public Ljava/io/ByteArrayInputStream;
.super Ljava/io/InputStream;
.source "ByteArrayInputStream.java"


# instance fields
.field protected buf:[B

.field protected count:I

.field protected mark:I

.field protected pos:I


# direct methods
.method public constructor <init>([B)V
    .registers 3
    .parameter "buf"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    .line 59
    iput-object p1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    .line 60
    array-length v0, p1

    iput v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 61
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6
    .parameter "buf"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 79
    iput-object p1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    .line 80
    iput p2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    .line 81
    iput p2, p0, Ljava/io/ByteArrayInputStream;->mark:I

    .line 82
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_12

    array-length v0, p1

    :goto_f
    iput v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 83
    return-void

    .line 82
    :cond_12
    add-int v0, p2, p3

    goto :goto_f
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 3

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 3
    .parameter "readlimit"

    .prologue
    .line 118
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iput v0, p0, Ljava/io/ByteArrayInputStream;->mark:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    .line 119
    monitor-exit p0

    return-void

    .line 118
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .registers 4

    .prologue
    .line 144
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    if-ge v0, v1, :cond_15

    iget-object v0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_17

    and-int/lit16 v0, v0, 0xff

    :goto_13
    monitor-exit p0

    return v0

    :cond_15
    const/4 v0, -0x1

    goto :goto_13

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 170
    monitor-enter p0

    :try_start_1
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 173
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v2, p0, Ljava/io/ByteArrayInputStream;->count:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2f

    if-lt v1, v2, :cond_e

    .line 174
    const/4 v1, -0x1

    .line 183
    :goto_c
    monitor-exit p0

    return v1

    .line 176
    :cond_e
    if-nez p3, :cond_12

    .line 177
    const/4 v1, 0x0

    goto :goto_c

    .line 180
    :cond_12
    :try_start_12
    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int/2addr v1, v2

    if-ge v1, p3, :cond_2d

    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int/2addr v1, v2

    move v0, v1

    .line 181
    .local v0, copylen:I
    :goto_1f
    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_2f

    move v1, v0

    .line 183
    goto :goto_c

    .end local v0           #copylen:I
    :cond_2d
    move v0, p3

    .line 180
    goto :goto_1f

    .line 170
    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    .line 195
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    .line 196
    monitor-exit p0

    return-void

    .line 195
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .registers 7
    .parameter "byteCount"

    .prologue
    const-wide/16 v2, 0x0

    .line 208
    monitor-enter p0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_a

    move-wide v1, v2

    .line 213
    :goto_8
    monitor-exit p0

    return-wide v1

    .line 211
    :cond_a
    :try_start_a
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    .line 212
    .local v0, temp:I
    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v1, v1, p1

    if-gez v1, :cond_1f

    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    :goto_18
    iput v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    .line 213
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int/2addr v1, v0

    int-to-long v1, v1

    goto :goto_8

    .line 212
    :cond_1f
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_25

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int v1, v1

    goto :goto_18

    .line 208
    .end local v0           #temp:I
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method
