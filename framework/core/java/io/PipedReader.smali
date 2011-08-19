.class public Ljava/io/PipedReader;
.super Ljava/io/Reader;
.source "PipedReader.java"


# static fields
.field private static final PIPE_SIZE:I = 0x400


# instance fields
.field private buffer:[C

.field private in:I

.field private isClosed:Z

.field isConnected:Z

.field private lastReader:Ljava/lang/Thread;

.field private lastWriter:Ljava/lang/Thread;

.field private out:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedReader;->in:I

    .line 82
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .parameter "pipeSize"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedReader;->in:I

    .line 108
    if-gtz p1, :cond_27

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pipe size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_27
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedWriter;)V
    .registers 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedReader;->in:I

    .line 95
    invoke-virtual {p0, p1}, Ljava/io/PipedReader;->connect(Ljava/io/PipedWriter;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedWriter;I)V
    .registers 3
    .parameter "out"
    .parameter "pipeSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0, p2}, Ljava/io/PipedReader;-><init>(I)V

    .line 127
    invoke-virtual {p0, p1}, Ljava/io/PipedReader;->connect(Ljava/io/PipedWriter;)V

    .line 128
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PipedReader;->isClosed:Z

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    .line 142
    monitor-exit p0

    return-void

    .line 139
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Ljava/io/PipedWriter;)V
    .registers 2
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p1, p0}, Ljava/io/PipedWriter;->connect(Ljava/io/PipedReader;)V

    .line 156
    return-void
.end method

.method declared-synchronized done()V
    .registers 2

    .prologue
    .line 449
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/io/PipedReader;->isClosed:Z

    .line 450
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 451
    monitor-exit p0

    return-void

    .line 449
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized establishConnection()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/io/PipedReader;->isConnected:Z

    if-eqz v0, :cond_10

    .line 166
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 165
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 168
    :cond_10
    :try_start_10
    iget-boolean v0, p0, Ljava/io/PipedReader;->isClosed:Z

    if-eqz v0, :cond_1c

    .line 169
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1c
    iget-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    if-nez v0, :cond_26

    .line 172
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    .line 174
    :cond_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PipedReader;->isConnected:Z
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_d

    .line 175
    monitor-exit p0

    return-void
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 195
    new-array v0, v2, [C

    .line 196
    .local v0, chars:[C
    invoke-virtual {p0, v0, v3, v2}, Ljava/io/PipedReader;->read([CII)I

    move-result v1

    .line 197
    .local v1, result:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    aget-char v2, v0, v3

    :goto_d
    return v2

    :cond_e
    move v2, v1

    goto :goto_d
.end method

.method public declared-synchronized read([CII)I
    .registers 11
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 232
    monitor-enter p0

    :try_start_3
    iget-boolean v4, p0, Ljava/io/PipedReader;->isConnected:Z

    if-nez v4, :cond_12

    .line 233
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Pipe not connected"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 232
    :catchall_f
    move-exception v4

    monitor-exit p0

    throw v4

    .line 235
    :cond_12
    :try_start_12
    iget-object v4, p0, Ljava/io/PipedReader;->buffer:[C

    if-nez v4, :cond_1e

    .line 236
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Pipe is closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 238
    :cond_1e
    array-length v4, p1

    invoke-static {v4, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_f

    .line 239
    if-nez p3, :cond_27

    move v4, v5

    .line 301
    :goto_25
    monitor-exit p0

    return v4

    .line 247
    :cond_27
    :try_start_27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_f

    .line 249
    const/4 v3, 0x1

    .line 250
    .local v3, first:Z
    :goto_2e
    :try_start_2e
    iget v4, p0, Ljava/io/PipedReader;->in:I

    if-ne v4, v6, :cond_60

    .line 252
    iget-boolean v4, p0, Ljava/io/PipedReader;->isClosed:Z

    if-eqz v4, :cond_38

    move v4, v6

    .line 253
    goto :goto_25

    .line 255
    :cond_38
    if-nez v3, :cond_56

    iget-object v4, p0, Ljava/io/PipedReader;->lastWriter:Ljava/lang/Thread;

    if-eqz v4, :cond_56

    iget-object v4, p0, Ljava/io/PipedReader;->lastWriter:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_56

    .line 256
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Pipe broken"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4e
    .catchall {:try_start_2e .. :try_end_4e} :catchall_f
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_4e} :catch_4e

    .line 263
    :catch_4e
    move-exception v4

    move-object v2, v4

    .line 264
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_50
    new-instance v4, Ljava/io/InterruptedIOException;

    invoke-direct {v4}, Ljava/io/InterruptedIOException;-><init>()V

    throw v4
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_f

    .line 258
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_56
    const/4 v3, 0x0

    .line 260
    :try_start_57
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 261
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_f
    .catch Ljava/lang/InterruptedException; {:try_start_57 .. :try_end_5f} :catch_4e

    goto :goto_2e

    .line 267
    :cond_60
    const/4 v1, 0x0

    .line 269
    .local v1, copyLength:I
    :try_start_61
    iget v4, p0, Ljava/io/PipedReader;->out:I

    iget v5, p0, Ljava/io/PipedReader;->in:I

    if-lt v4, v5, :cond_98

    .line 270
    iget-object v4, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v4, v4

    iget v5, p0, Ljava/io/PipedReader;->out:I

    sub-int/2addr v4, v5

    if-le p3, v4, :cond_a0

    iget-object v4, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v4, v4

    iget v5, p0, Ljava/io/PipedReader;->out:I

    sub-int/2addr v4, v5

    move v1, v4

    .line 271
    :goto_76
    iget-object v4, p0, Ljava/io/PipedReader;->buffer:[C

    iget v5, p0, Ljava/io/PipedReader;->out:I

    invoke-static {v4, v5, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    iget v4, p0, Ljava/io/PipedReader;->out:I

    add-int/2addr v4, v1

    iput v4, p0, Ljava/io/PipedReader;->out:I

    .line 273
    iget v4, p0, Ljava/io/PipedReader;->out:I

    iget-object v5, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v5, v5

    if-ne v4, v5, :cond_8c

    .line 274
    const/4 v4, 0x0

    iput v4, p0, Ljava/io/PipedReader;->out:I

    .line 276
    :cond_8c
    iget v4, p0, Ljava/io/PipedReader;->out:I

    iget v5, p0, Ljava/io/PipedReader;->in:I

    if-ne v4, v5, :cond_98

    .line 278
    const/4 v4, -0x1

    iput v4, p0, Ljava/io/PipedReader;->in:I

    .line 279
    const/4 v4, 0x0

    iput v4, p0, Ljava/io/PipedReader;->out:I

    .line 287
    :cond_98
    if-eq v1, p3, :cond_9e

    iget v4, p0, Ljava/io/PipedReader;->in:I

    if-ne v4, v6, :cond_a2

    :cond_9e
    move v4, v1

    .line 288
    goto :goto_25

    :cond_a0
    move v1, p3

    .line 270
    goto :goto_76

    .line 291
    :cond_a2
    move v0, v1

    .line 293
    .local v0, charsCopied:I
    iget v4, p0, Ljava/io/PipedReader;->in:I

    iget v5, p0, Ljava/io/PipedReader;->out:I

    sub-int/2addr v4, v5

    sub-int v5, p3, v1

    if-le v4, v5, :cond_cd

    sub-int v4, p3, v1

    move v1, v4

    .line 294
    :goto_af
    iget-object v4, p0, Ljava/io/PipedReader;->buffer:[C

    iget v5, p0, Ljava/io/PipedReader;->out:I

    add-int v6, p2, v0

    invoke-static {v4, v5, p1, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    iget v4, p0, Ljava/io/PipedReader;->out:I

    add-int/2addr v4, v1

    iput v4, p0, Ljava/io/PipedReader;->out:I

    .line 296
    iget v4, p0, Ljava/io/PipedReader;->out:I

    iget v5, p0, Ljava/io/PipedReader;->in:I

    if-ne v4, v5, :cond_c9

    .line 298
    const/4 v4, -0x1

    iput v4, p0, Ljava/io/PipedReader;->in:I

    .line 299
    const/4 v4, 0x0

    iput v4, p0, Ljava/io/PipedReader;->out:I

    .line 301
    :cond_c9
    add-int v4, v0, v1

    goto/16 :goto_25

    .line 293
    :cond_cd
    iget v4, p0, Ljava/io/PipedReader;->in:I

    iget v5, p0, Ljava/io/PipedReader;->out:I
    :try_end_d1
    .catchall {:try_start_61 .. :try_end_d1} :catchall_f

    sub-int/2addr v4, v5

    move v1, v4

    goto :goto_af
.end method

.method public declared-synchronized ready()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/io/PipedReader;->isConnected:Z

    if-nez v0, :cond_10

    .line 321
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 320
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 323
    :cond_10
    :try_start_10
    iget-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    if-nez v0, :cond_1c

    .line 324
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_1c
    iget v0, p0, Ljava/io/PipedReader;->in:I
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_d

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    const/4 v0, 0x1

    :goto_22
    monitor-exit p0

    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_22
.end method

.method declared-synchronized receive(C)V
    .registers 6
    .parameter "oneChar"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ljava/io/PipedReader;->buffer:[C

    if-nez v1, :cond_10

    .line 345
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 344
    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 347
    :cond_10
    :try_start_10
    iget-object v1, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    if-eqz v1, :cond_24

    iget-object v1, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_24

    .line 348
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe broken"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 355
    :cond_24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Ljava/io/PipedReader;->lastWriter:Ljava/lang/Thread;
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_d

    .line 357
    :cond_2a
    :try_start_2a
    iget-object v1, p0, Ljava/io/PipedReader;->buffer:[C

    if-eqz v1, :cond_58

    iget v1, p0, Ljava/io/PipedReader;->out:I

    iget v2, p0, Ljava/io/PipedReader;->in:I

    if-ne v1, v2, :cond_58

    .line 358
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 359
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 360
    iget-object v1, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 361
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe broken"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_50
    .catchall {:try_start_2a .. :try_end_50} :catchall_d
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_50} :catch_50

    .line 364
    :catch_50
    move-exception v1

    move-object v0, v1

    .line 365
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_52
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    .line 367
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_58
    iget-object v1, p0, Ljava/io/PipedReader;->buffer:[C

    if-nez v1, :cond_64

    .line 368
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    :cond_64
    iget v1, p0, Ljava/io/PipedReader;->in:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6c

    .line 371
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedReader;->in:I

    .line 373
    :cond_6c
    iget-object v1, p0, Ljava/io/PipedReader;->buffer:[C

    iget v2, p0, Ljava/io/PipedReader;->in:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/PipedReader;->in:I

    aput-char p1, v1, v2

    .line 374
    iget v1, p0, Ljava/io/PipedReader;->in:I

    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v2, v2

    if-ne v1, v2, :cond_80

    .line 375
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedReader;->in:I
    :try_end_80
    .catchall {:try_start_52 .. :try_end_80} :catchall_d

    .line 377
    :cond_80
    monitor-exit p0

    return-void
.end method

.method declared-synchronized receive([CII)V
    .registers 8
    .parameter "chars"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    monitor-enter p0

    :try_start_1
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 392
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    if-nez v2, :cond_14

    .line 393
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Pipe is closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    .line 391
    :catchall_11
    move-exception v2

    monitor-exit p0

    throw v2

    .line 395
    :cond_14
    :try_start_14
    iget-object v2, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    if-eqz v2, :cond_28

    iget-object v2, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_28

    .line 396
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Pipe broken"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 403
    :cond_28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Ljava/io/PipedReader;->lastWriter:Ljava/lang/Thread;
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_11

    .line 404
    :cond_2e
    :goto_2e
    if-lez p3, :cond_bb

    .line 406
    :cond_30
    :try_start_30
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    if-eqz v2, :cond_5e

    iget v2, p0, Ljava/io/PipedReader;->out:I

    iget v3, p0, Ljava/io/PipedReader;->in:I

    if-ne v2, v3, :cond_5e

    .line 407
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 408
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 409
    iget-object v2, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    if-eqz v2, :cond_30

    iget-object v2, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_30

    .line 410
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Pipe broken"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_56
    .catchall {:try_start_30 .. :try_end_56} :catchall_11
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_56} :catch_56

    .line 413
    :catch_56
    move-exception v2

    move-object v0, v2

    .line 414
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_58
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    throw v2

    .line 416
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_5e
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    if-nez v2, :cond_6a

    .line 417
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Pipe is closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 419
    :cond_6a
    iget v2, p0, Ljava/io/PipedReader;->in:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_72

    .line 420
    const/4 v2, 0x0

    iput v2, p0, Ljava/io/PipedReader;->in:I

    .line 422
    :cond_72
    iget v2, p0, Ljava/io/PipedReader;->in:I

    iget v3, p0, Ljava/io/PipedReader;->out:I

    if-lt v2, v3, :cond_9a

    .line 423
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v2, v2

    iget v3, p0, Ljava/io/PipedReader;->in:I

    sub-int v1, v2, v3

    .line 424
    .local v1, length:I
    if-ge p3, v1, :cond_82

    .line 425
    move v1, p3

    .line 427
    :cond_82
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    iget v3, p0, Ljava/io/PipedReader;->in:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    add-int/2addr p2, v1

    .line 429
    sub-int/2addr p3, v1

    .line 430
    iget v2, p0, Ljava/io/PipedReader;->in:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/PipedReader;->in:I

    .line 431
    iget v2, p0, Ljava/io/PipedReader;->in:I

    iget-object v3, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v3, v3

    if-ne v2, v3, :cond_9a

    .line 432
    const/4 v2, 0x0

    iput v2, p0, Ljava/io/PipedReader;->in:I

    .line 435
    .end local v1           #length:I
    :cond_9a
    if-lez p3, :cond_2e

    iget v2, p0, Ljava/io/PipedReader;->in:I

    iget v3, p0, Ljava/io/PipedReader;->out:I

    if-eq v2, v3, :cond_2e

    .line 436
    iget v2, p0, Ljava/io/PipedReader;->out:I

    iget v3, p0, Ljava/io/PipedReader;->in:I

    sub-int v1, v2, v3

    .line 437
    .restart local v1       #length:I
    if-ge p3, v1, :cond_ab

    .line 438
    move v1, p3

    .line 440
    :cond_ab
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    iget v3, p0, Ljava/io/PipedReader;->in:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    add-int/2addr p2, v1

    .line 442
    sub-int/2addr p3, v1

    .line 443
    iget v2, p0, Ljava/io/PipedReader;->in:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/PipedReader;->in:I
    :try_end_b9
    .catchall {:try_start_58 .. :try_end_b9} :catchall_11

    goto/16 :goto_2e

    .line 446
    .end local v1           #length:I
    :cond_bb
    monitor-exit p0

    return-void
.end method
