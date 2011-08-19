.class public Ljava/io/BufferedWriter;
.super Ljava/io/Writer;
.source "BufferedWriter.java"


# instance fields
.field private buf:[C

.field private final lineSeparator:Ljava/lang/String;

.field private out:Ljava/io/Writer;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 59
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .registers 5
    .parameter "out"
    .parameter "size"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 49
    new-instance v0, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v1, "line.separator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/io/BufferedWriter;->lineSeparator:Ljava/lang/String;

    .line 72
    if-gtz p2, :cond_1c

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1c
    iput-object p1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    .line 76
    new-array v0, p2, [C

    iput-object v0, p0, Ljava/io/BufferedWriter;->buf:[C

    .line 77
    return-void
.end method

.method private checkNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/io/BufferedWriter;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 135
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedWriter is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_e
    return-void
.end method

.method private flushInternal()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 143
    iget v0, p0, Ljava/io/BufferedWriter;->pos:I

    if-lez v0, :cond_e

    .line 144
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 146
    :cond_e
    iput v3, p0, Ljava/io/BufferedWriter;->pos:I

    .line 147
    return-void
.end method

.method private isClosed()Z
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v2, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 90
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedWriter;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 91
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_21

    .line 115
    :goto_a
    return-void

    .line 94
    :cond_b
    const/4 v1, 0x0

    .line 96
    .local v1, thrown:Ljava/lang/Throwable;
    :try_start_c
    invoke-direct {p0}, Ljava/io/BufferedWriter;->flushInternal()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_21
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_24

    .line 100
    :goto_f
    const/4 v3, 0x0

    :try_start_10
    iput-object v3, p0, Ljava/io/BufferedWriter;->buf:[C
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_21

    .line 103
    :try_start_12
    iget-object v3, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_21
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_17} :catch_27

    .line 109
    :cond_17
    :goto_17
    const/4 v3, 0x0

    :try_start_18
    iput-object v3, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    .line 111
    if-eqz v1, :cond_1f

    .line 112
    invoke-static {v1}, Lorg/apache/harmony/luni/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    .line 114
    :cond_1f
    monitor-exit v2

    goto :goto_a

    .end local v1           #thrown:Ljava/lang/Throwable;
    :catchall_21
    move-exception v3

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw v3

    .line 97
    .restart local v1       #thrown:Ljava/lang/Throwable;
    :catch_24
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Throwable;
    move-object v1, v0

    goto :goto_f

    .line 104
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v3

    move-object v0, v3

    .line 105
    .restart local v0       #e:Ljava/lang/Throwable;
    if-nez v1, :cond_17

    .line 106
    move-object v1, v0

    goto :goto_17
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedWriter;->checkNotClosed()V

    .line 128
    invoke-direct {p0}, Ljava/io/BufferedWriter;->flushInternal()V

    .line 129
    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 130
    monitor-exit v0

    .line 131
    return-void

    .line 130
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public newLine()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Ljava/io/BufferedWriter;->lineSeparator:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/io/BufferedWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 168
    return-void
.end method

.method public write(I)V
    .registers 7
    .parameter "oneChar"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedWriter;->checkNotClosed()V

    .line 241
    iget v1, p0, Ljava/io/BufferedWriter;->pos:I

    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v2, v2

    if-lt v1, v2, :cond_1b

    .line 242
    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    const/4 v3, 0x0

    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 243
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/BufferedWriter;->pos:I

    .line 245
    :cond_1b
    iget-object v1, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/BufferedWriter;->pos:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 246
    monitor-exit v0

    .line 247
    return-void

    .line 246
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public write(Ljava/lang/String;II)V
    .registers 11
    .parameter "str"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v2, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 272
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedWriter;->checkNotClosed()V

    .line 273
    if-gtz p3, :cond_a

    .line 274
    monitor-exit v2

    .line 310
    :goto_9
    return-void

    .line 276
    :cond_a
    if-ltz p2, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, p3

    if-le p2, v3, :cond_1c

    .line 277
    :cond_13
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    throw v3

    .line 309
    :catchall_19
    move-exception v3

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v3

    .line 279
    :cond_1c
    :try_start_1c
    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    if-nez v3, :cond_35

    iget-object v3, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v3, v3

    if-lt p3, v3, :cond_35

    .line 280
    new-array v1, p3, [C

    .line 281
    .local v1, chars:[C
    add-int v3, p2, p3

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v3, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 282
    iget-object v3, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, p3}, Ljava/io/Writer;->write([CII)V

    .line 283
    monitor-exit v2

    goto :goto_9

    .line 285
    .end local v1           #chars:[C
    :cond_35
    iget-object v3, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v3, v3

    iget v4, p0, Ljava/io/BufferedWriter;->pos:I

    sub-int v0, v3, v4

    .line 286
    .local v0, available:I
    if-ge p3, v0, :cond_3f

    .line 287
    move v0, p3

    .line 289
    :cond_3f
    if-lez v0, :cond_4f

    .line 290
    add-int v3, p2, v0

    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v5, p0, Ljava/io/BufferedWriter;->pos:I

    invoke-virtual {p1, p2, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 291
    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    add-int/2addr v3, v0

    iput v3, p0, Ljava/io/BufferedWriter;->pos:I

    .line 293
    :cond_4f
    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v4, v4

    if-ne v3, v4, :cond_8c

    .line 294
    iget-object v3, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    const/4 v5, 0x0

    iget-object v6, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v6, v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/Writer;->write([CII)V

    .line 295
    const/4 v3, 0x0

    iput v3, p0, Ljava/io/BufferedWriter;->pos:I

    .line 296
    if-le p3, v0, :cond_8c

    .line 297
    add-int/2addr p2, v0

    .line 298
    sub-int v0, p3, v0

    .line 299
    iget-object v3, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v3, v3

    if-lt v0, v3, :cond_7e

    .line 300
    new-array v1, p3, [C

    .line 301
    .restart local v1       #chars:[C
    add-int v3, p2, v0

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v3, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 302
    iget-object v3, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Ljava/io/Writer;->write([CII)V

    .line 303
    monitor-exit v2

    goto :goto_9

    .line 305
    .end local v1           #chars:[C
    :cond_7e
    add-int v3, p2, v0

    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v5, p0, Ljava/io/BufferedWriter;->pos:I

    invoke-virtual {p1, p2, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 306
    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    add-int/2addr v3, v0

    iput v3, p0, Ljava/io/BufferedWriter;->pos:I

    .line 309
    :cond_8c
    monitor-exit v2
    :try_end_8d
    .catchall {:try_start_1c .. :try_end_8d} :catchall_19

    goto/16 :goto_9
.end method

.method public write([CII)V
    .registers 10
    .parameter "cbuf"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v1, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedWriter;->checkNotClosed()V

    .line 193
    if-nez p1, :cond_13

    .line 194
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "buffer == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    :catchall_10
    move-exception v2

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v2

    .line 196
    :cond_13
    :try_start_13
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 197
    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    if-nez v2, :cond_27

    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v2, v2

    if-lt p3, v2, :cond_27

    .line 198
    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 199
    monitor-exit v1

    .line 225
    :goto_26
    return-void

    .line 201
    :cond_27
    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v2, v2

    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    sub-int v0, v2, v3

    .line 202
    .local v0, available:I
    if-ge p3, v0, :cond_31

    .line 203
    move v0, p3

    .line 205
    :cond_31
    if-lez v0, :cond_3f

    .line 206
    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Ljava/io/BufferedWriter;->pos:I

    .line 209
    :cond_3f
    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    iget-object v3, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v3, v3

    if-ne v2, v3, :cond_71

    .line 210
    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    iget-object v3, p0, Ljava/io/BufferedWriter;->buf:[C

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Writer;->write([CII)V

    .line 211
    const/4 v2, 0x0

    iput v2, p0, Ljava/io/BufferedWriter;->pos:I

    .line 212
    if-le p3, v0, :cond_71

    .line 213
    add-int/2addr p2, v0

    .line 214
    sub-int v0, p3, v0

    .line 215
    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v2, v2

    if-lt v0, v2, :cond_65

    .line 216
    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/Writer;->write([CII)V

    .line 217
    monitor-exit v1

    goto :goto_26

    .line 220
    :cond_65
    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Ljava/io/BufferedWriter;->pos:I

    .line 224
    :cond_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_13 .. :try_end_72} :catchall_10

    goto :goto_26
.end method
