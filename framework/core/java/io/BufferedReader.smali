.class public Ljava/io/BufferedReader;
.super Ljava/io/Reader;
.source "BufferedReader.java"


# instance fields
.field private buf:[C

.field private end:I

.field private in:Ljava/io/Reader;

.field private mark:I

.field private markLimit:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 80
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .registers 5
    .parameter "in"
    .parameter "size"

    .prologue
    const/4 v0, -0x1

    .line 92
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 69
    iput v0, p0, Ljava/io/BufferedReader;->mark:I

    .line 71
    iput v0, p0, Ljava/io/BufferedReader;->markLimit:I

    .line 93
    if-gtz p2, :cond_12

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_12
    iput-object p1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    .line 97
    new-array v0, p2, [C

    iput-object v0, p0, Ljava/io/BufferedReader;->buf:[C

    .line 98
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
    .line 203
    invoke-direct {p0}, Ljava/io/BufferedReader;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 204
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_e
    return-void
.end method

.method private fillBuf()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 128
    iget v4, p0, Ljava/io/BufferedReader;->mark:I

    if-eq v4, v10, :cond_f

    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    iget v5, p0, Ljava/io/BufferedReader;->mark:I

    sub-int/2addr v4, v5

    iget v5, p0, Ljava/io/BufferedReader;->markLimit:I

    if-lt v4, v5, :cond_24

    .line 130
    :cond_f
    iget-object v4, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v6, v6

    invoke-virtual {v4, v5, v9, v6}, Ljava/io/Reader;->read([CII)I

    move-result v3

    .line 131
    .local v3, result:I
    if-lez v3, :cond_22

    .line 132
    iput v10, p0, Ljava/io/BufferedReader;->mark:I

    .line 133
    iput v9, p0, Ljava/io/BufferedReader;->pos:I

    .line 134
    iput v3, p0, Ljava/io/BufferedReader;->end:I

    :cond_22
    move v4, v3

    .line 161
    .end local v3           #result:I
    :goto_23
    return v4

    .line 139
    :cond_24
    iget v4, p0, Ljava/io/BufferedReader;->mark:I

    if-nez v4, :cond_5f

    iget v4, p0, Ljava/io/BufferedReader;->markLimit:I

    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v5, v5

    if-le v4, v5, :cond_5f

    .line 141
    iget-object v4, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v4, v4

    mul-int/lit8 v1, v4, 0x2

    .line 142
    .local v1, newLength:I
    iget v4, p0, Ljava/io/BufferedReader;->markLimit:I

    if-le v1, v4, :cond_3a

    .line 143
    iget v1, p0, Ljava/io/BufferedReader;->markLimit:I

    .line 145
    :cond_3a
    new-array v2, v1, [C

    .line 146
    .local v2, newbuf:[C
    iget-object v4, p0, Ljava/io/BufferedReader;->buf:[C

    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v5, v5

    invoke-static {v4, v9, v2, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iput-object v2, p0, Ljava/io/BufferedReader;->buf:[C

    .line 157
    .end local v1           #newLength:I
    .end local v2           #newbuf:[C
    :cond_46
    :goto_46
    iget-object v4, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    iget v6, p0, Ljava/io/BufferedReader;->pos:I

    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v7, v7

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 158
    .local v0, count:I
    if-eq v0, v10, :cond_5d

    .line 159
    iget v4, p0, Ljava/io/BufferedReader;->end:I

    add-int/2addr v4, v0

    iput v4, p0, Ljava/io/BufferedReader;->end:I

    :cond_5d
    move v4, v0

    .line 161
    goto :goto_23

    .line 148
    .end local v0           #count:I
    :cond_5f
    iget v4, p0, Ljava/io/BufferedReader;->mark:I

    if-lez v4, :cond_46

    .line 150
    iget-object v4, p0, Ljava/io/BufferedReader;->buf:[C

    iget v5, p0, Ljava/io/BufferedReader;->mark:I

    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v7, v7

    iget v8, p0, Ljava/io/BufferedReader;->mark:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    iget v5, p0, Ljava/io/BufferedReader;->mark:I

    sub-int/2addr v4, v5

    iput v4, p0, Ljava/io/BufferedReader;->pos:I

    .line 152
    iget v4, p0, Ljava/io/BufferedReader;->end:I

    iget v5, p0, Ljava/io/BufferedReader;->mark:I

    sub-int/2addr v4, v5

    iput v4, p0, Ljava/io/BufferedReader;->end:I

    .line 153
    iput v9, p0, Ljava/io/BufferedReader;->mark:I

    goto :goto_46
.end method

.method private isClosed()Z
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Ljava/io/BufferedReader;->buf:[C

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method final chompNewline()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    iget v0, p0, Ljava/io/BufferedReader;->pos:I

    iget v1, p0, Ljava/io/BufferedReader;->end:I

    if-ne v0, v1, :cond_d

    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    :cond_d
    iget-object v0, p0, Ljava/io/BufferedReader;->buf:[C

    iget v1, p0, Ljava/io/BufferedReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1d

    .line 338
    iget v0, p0, Ljava/io/BufferedReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/io/BufferedReader;->pos:I

    .line 340
    :cond_1d
    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedReader;->isClosed()Z

    move-result v1

    if-nez v1, :cond_11

    .line 112
    iget-object v1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/BufferedReader;->buf:[C

    .line 115
    :cond_11
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public mark(I)V
    .registers 4
    .parameter "markLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    if-gez p1, :cond_8

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 195
    :cond_8
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_b
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    .line 197
    iput p1, p0, Ljava/io/BufferedReader;->markLimit:I

    .line 198
    iget v1, p0, Ljava/io/BufferedReader;->pos:I

    iput v1, p0, Ljava/io/BufferedReader;->mark:I

    .line 199
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_16

    throw v1
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 218
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
    const/4 v3, -0x1

    .line 235
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_4
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    .line 238
    iget v1, p0, Ljava/io/BufferedReader;->pos:I

    iget v2, p0, Ljava/io/BufferedReader;->end:I

    if-lt v1, v2, :cond_13

    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I

    move-result v1

    if-eq v1, v3, :cond_20

    .line 239
    :cond_13
    iget-object v1, p0, Ljava/io/BufferedReader;->buf:[C

    iget v2, p0, Ljava/io/BufferedReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/BufferedReader;->pos:I

    aget-char v1, v1, v2

    monitor-exit v0

    move v0, v1

    .line 241
    :goto_1f
    return v0

    :cond_20
    monitor-exit v0

    move v0, v3

    goto :goto_1f

    .line 242
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public read([CII)I
    .registers 11
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 273
    iget-object v3, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 274
    :try_start_4
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    .line 275
    array-length v4, p1

    invoke-static {v4, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 276
    move v2, p3

    .line 277
    .local v2, outstanding:I
    :cond_c
    if-lez v2, :cond_33

    .line 282
    iget v4, p0, Ljava/io/BufferedReader;->end:I

    iget v5, p0, Ljava/io/BufferedReader;->pos:I

    sub-int v0, v4, v5

    .line 283
    .local v0, available:I
    if-lez v0, :cond_27

    .line 284
    if-lt v0, v2, :cond_3c

    move v1, v2

    .line 285
    .local v1, count:I
    :goto_19
    iget-object v4, p0, Ljava/io/BufferedReader;->buf:[C

    iget v5, p0, Ljava/io/BufferedReader;->pos:I

    invoke-static {v4, v5, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    add-int/2addr v4, v1

    iput v4, p0, Ljava/io/BufferedReader;->pos:I

    .line 287
    add-int/2addr p2, v1

    .line 288
    sub-int/2addr v2, v1

    .line 297
    .end local v1           #count:I
    :cond_27
    if-eqz v2, :cond_33

    if-ge v2, p3, :cond_3e

    iget-object v4, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->ready()Z

    move-result v4

    if-nez v4, :cond_3e

    .line 326
    .end local v0           #available:I
    :cond_33
    :goto_33
    sub-int v1, p3, v2

    .line 327
    .restart local v1       #count:I
    if-gtz v1, :cond_39

    if-ne v1, p3, :cond_68

    :cond_39
    move v4, v1

    :goto_3a
    monitor-exit v3

    return v4

    .end local v1           #count:I
    .restart local v0       #available:I
    :cond_3c
    move v1, v0

    .line 284
    goto :goto_19

    .line 309
    :cond_3e
    iget v4, p0, Ljava/io/BufferedReader;->mark:I

    if-eq v4, v6, :cond_4b

    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    iget v5, p0, Ljava/io/BufferedReader;->mark:I

    sub-int/2addr v4, v5

    iget v5, p0, Ljava/io/BufferedReader;->markLimit:I

    if-lt v4, v5, :cond_61

    :cond_4b
    iget-object v4, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v4, v4

    if-lt v2, v4, :cond_61

    .line 311
    iget-object v4, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v4, p1, p2, v2}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 312
    .restart local v1       #count:I
    if-lez v1, :cond_33

    .line 313
    add-int/2addr p2, v1

    .line 314
    sub-int/2addr v2, v1

    .line 315
    const/4 v4, -0x1

    iput v4, p0, Ljava/io/BufferedReader;->mark:I

    goto :goto_33

    .line 328
    .end local v0           #available:I
    .end local v1           #count:I
    .end local v2           #outstanding:I
    :catchall_5e
    move-exception v4

    monitor-exit v3
    :try_end_60
    .catchall {:try_start_4 .. :try_end_60} :catchall_5e

    throw v4

    .line 321
    .restart local v0       #available:I
    .restart local v2       #outstanding:I
    :cond_61
    :try_start_61
    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_5e

    move-result v4

    if-ne v4, v6, :cond_c

    goto :goto_33

    .end local v0           #available:I
    .restart local v1       #count:I
    :cond_68
    move v4, v6

    .line 327
    goto :goto_3a
.end method

.method public readLine()Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v6, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 355
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    .line 357
    iget v7, p0, Ljava/io/BufferedReader;->pos:I

    iget v8, p0, Ljava/io/BufferedReader;->end:I

    if-ne v7, v8, :cond_17

    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_17

    .line 358
    const/4 v7, 0x0

    monitor-exit v6

    move-object v6, v7

    .line 419
    :goto_16
    return-object v6

    .line 360
    :cond_17
    iget v2, p0, Ljava/io/BufferedReader;->pos:I

    .local v2, charPos:I
    :goto_19
    iget v7, p0, Ljava/io/BufferedReader;->end:I

    if-ge v2, v7, :cond_75

    .line 361
    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    aget-char v1, v7, v2

    .line 365
    .local v1, ch:C
    const/16 v7, 0xd

    if-le v1, v7, :cond_28

    .line 360
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 368
    :cond_28
    const/16 v7, 0xa

    if-ne v1, v7, :cond_40

    .line 369
    new-instance v4, Ljava/lang/String;

    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    iget v9, p0, Ljava/io/BufferedReader;->pos:I

    sub-int v9, v2, v9

    invoke-direct {v4, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    .line 370
    .local v4, res:Ljava/lang/String;
    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Ljava/io/BufferedReader;->pos:I

    .line 371
    monitor-exit v6

    move-object v6, v4

    goto :goto_16

    .line 372
    .end local v4           #res:Ljava/lang/String;
    :cond_40
    const/16 v7, 0xd

    if-ne v1, v7, :cond_25

    .line 373
    new-instance v4, Ljava/lang/String;

    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    iget v9, p0, Ljava/io/BufferedReader;->pos:I

    sub-int v9, v2, v9

    invoke-direct {v4, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    .line 374
    .restart local v4       #res:Ljava/lang/String;
    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Ljava/io/BufferedReader;->pos:I

    .line 375
    iget v7, p0, Ljava/io/BufferedReader;->pos:I

    iget v8, p0, Ljava/io/BufferedReader;->end:I

    if-lt v7, v8, :cond_62

    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_72

    :cond_62
    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    aget-char v7, v7, v8

    const/16 v8, 0xa

    if-ne v7, v8, :cond_72

    .line 377
    iget v7, p0, Ljava/io/BufferedReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/io/BufferedReader;->pos:I

    .line 379
    :cond_72
    monitor-exit v6

    move-object v6, v4

    goto :goto_16

    .line 383
    .end local v1           #ch:C
    .end local v4           #res:Ljava/lang/String;
    :cond_75
    const/4 v3, 0x0

    .line 384
    .local v3, eol:C
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x50

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 387
    .local v5, result:Ljava/lang/StringBuilder;
    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    iget v9, p0, Ljava/io/BufferedReader;->end:I

    iget v10, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v9, v10

    invoke-virtual {v5, v7, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 389
    :goto_89
    iget v7, p0, Ljava/io/BufferedReader;->end:I

    iput v7, p0, Ljava/io/BufferedReader;->pos:I

    .line 392
    const/16 v7, 0xa

    if-ne v3, v7, :cond_99

    .line 393
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto/16 :goto_16

    .line 396
    :cond_99
    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_b2

    .line 398
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-gtz v7, :cond_a8

    if-eqz v3, :cond_b0

    :cond_a8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_ac
    monitor-exit v6

    move-object v6, v7

    goto/16 :goto_16

    :cond_b0
    const/4 v7, 0x0

    goto :goto_ac

    .line 402
    :cond_b2
    iget v2, p0, Ljava/io/BufferedReader;->pos:I

    :goto_b4
    iget v7, p0, Ljava/io/BufferedReader;->end:I

    if-ge v2, v7, :cond_10a

    .line 403
    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    aget-char v0, v7, v2

    .line 404
    .local v0, c:C
    if-nez v3, :cond_ca

    .line 405
    const/16 v7, 0xa

    if-eq v0, v7, :cond_c6

    const/16 v7, 0xd

    if-ne v0, v7, :cond_c7

    .line 406
    :cond_c6
    move v3, v0

    .line 402
    :cond_c7
    add-int/lit8 v2, v2, 0x1

    goto :goto_b4

    .line 408
    :cond_ca
    const/16 v7, 0xd

    if-ne v3, v7, :cond_ef

    const/16 v7, 0xa

    if-ne v0, v7, :cond_ef

    .line 409
    iget v7, p0, Ljava/io/BufferedReader;->pos:I

    if-le v2, v7, :cond_e3

    .line 410
    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    iget v9, p0, Ljava/io/BufferedReader;->pos:I

    sub-int v9, v2, v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {v5, v7, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 412
    :cond_e3
    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Ljava/io/BufferedReader;->pos:I

    .line 413
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto/16 :goto_16

    .line 415
    :cond_ef
    iget v7, p0, Ljava/io/BufferedReader;->pos:I

    if-le v2, v7, :cond_100

    .line 416
    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    iget v9, p0, Ljava/io/BufferedReader;->pos:I

    sub-int v9, v2, v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {v5, v7, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 418
    :cond_100
    iput v2, p0, Ljava/io/BufferedReader;->pos:I

    .line 419
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto/16 :goto_16

    .line 422
    .end local v0           #c:C
    :cond_10a
    if-nez v3, :cond_11d

    .line 423
    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    iget v9, p0, Ljava/io/BufferedReader;->end:I

    iget v10, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v9, v10

    invoke-virtual {v5, v7, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto/16 :goto_89

    .line 428
    .end local v2           #charPos:I
    .end local v3           #eol:C
    .end local v5           #result:Ljava/lang/StringBuilder;
    :catchall_11a
    move-exception v7

    monitor-exit v6
    :try_end_11c
    .catchall {:try_start_3 .. :try_end_11c} :catchall_11a

    throw v7

    .line 425
    .restart local v2       #charPos:I
    .restart local v3       #eol:C
    .restart local v5       #result:Ljava/lang/StringBuilder;
    :cond_11d
    :try_start_11d
    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    iget v9, p0, Ljava/io/BufferedReader;->end:I

    iget v10, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {v5, v7, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_12b
    .catchall {:try_start_11d .. :try_end_12b} :catchall_11a

    goto/16 :goto_89
.end method

.method public ready()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    .line 447
    iget v1, p0, Ljava/io/BufferedReader;->end:I

    iget v2, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v1, v2

    if-gtz v1, :cond_15

    iget-object v1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->ready()Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_15
    const/4 v1, 0x1

    :goto_16
    monitor-exit v0

    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_16

    .line 448
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

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
    .line 463
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    .line 465
    iget v1, p0, Ljava/io/BufferedReader;->mark:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    .line 466
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid mark"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 469
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1

    .line 468
    :cond_16
    :try_start_16
    iget v1, p0, Ljava/io/BufferedReader;->mark:I

    iput v1, p0, Ljava/io/BufferedReader;->pos:I

    .line 469
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_13

    .line 470
    return-void
.end method

.method public skip(J)J
    .registers 10
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 492
    cmp-long v2, p1, v5

    if-gez v2, :cond_1f

    .line 493
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byteCount < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 495
    :cond_1f
    iget-object v2, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 496
    :try_start_22
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    .line 497
    const-wide/16 v3, 0x1

    cmp-long v3, p1, v3

    if-gez v3, :cond_2e

    .line 498
    monitor-exit v2

    move-wide v2, v5

    .line 519
    :goto_2d
    return-wide v2

    .line 500
    :cond_2e
    iget v3, p0, Ljava/io/BufferedReader;->end:I

    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v3, v3, p1

    if-ltz v3, :cond_42

    .line 501
    iget v3, p0, Ljava/io/BufferedReader;->pos:I

    int-to-long v3, v3

    add-long/2addr v3, p1

    long-to-int v3, v3

    iput v3, p0, Ljava/io/BufferedReader;->pos:I

    .line 502
    monitor-exit v2

    move-wide v2, p1

    goto :goto_2d

    .line 505
    :cond_42
    iget v3, p0, Ljava/io/BufferedReader;->end:I

    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v3, v4

    int-to-long v0, v3

    .line 506
    .local v0, read:J
    iget v3, p0, Ljava/io/BufferedReader;->end:I

    iput v3, p0, Ljava/io/BufferedReader;->pos:I

    .line 507
    :goto_4c
    cmp-long v3, v0, p1

    if-gez v3, :cond_81

    .line 508
    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5a

    .line 509
    monitor-exit v2

    move-wide v2, v0

    goto :goto_2d

    .line 511
    :cond_5a
    iget v3, p0, Ljava/io/BufferedReader;->end:I

    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long v5, p1, v0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_72

    .line 512
    iget v3, p0, Ljava/io/BufferedReader;->pos:I

    int-to-long v3, v3

    sub-long v5, p1, v0

    add-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Ljava/io/BufferedReader;->pos:I

    .line 513
    monitor-exit v2

    move-wide v2, p1

    goto :goto_2d

    .line 516
    :cond_72
    iget v3, p0, Ljava/io/BufferedReader;->end:I

    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 517
    iget v3, p0, Ljava/io/BufferedReader;->end:I

    iput v3, p0, Ljava/io/BufferedReader;->pos:I

    goto :goto_4c

    .line 520
    .end local v0           #read:J
    :catchall_7e
    move-exception v3

    monitor-exit v2
    :try_end_80
    .catchall {:try_start_22 .. :try_end_80} :catchall_7e

    throw v3

    .line 519
    .restart local v0       #read:J
    :cond_81
    :try_start_81
    monitor-exit v2
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_7e

    move-wide v2, p1

    goto :goto_2d
.end method
