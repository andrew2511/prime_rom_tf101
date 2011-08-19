.class public Ljava/io/PipedInputStream;
.super Ljava/io/InputStream;
.source "PipedInputStream.java"


# static fields
.field protected static final PIPE_SIZE:I = 0x400


# instance fields
.field protected buffer:[B

.field protected in:I

.field private isClosed:Z

.field isConnected:Z

.field private lastReader:Ljava/lang/Thread;

.field private lastWriter:Ljava/lang/Thread;

.field protected out:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    .line 82
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .parameter "pipeSize"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

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
    new-array v0, p1, [B

    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;)V
    .registers 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    .line 95
    invoke-virtual {p0, p1}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;I)V
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
    invoke-direct {p0, p2}, Ljava/io/PipedInputStream;-><init>(I)V

    .line 127
    invoke-virtual {p0, p1}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V

    .line 128
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-eqz v0, :cond_a

    iget v0, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_23

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 142
    :cond_a
    const/4 v0, 0x0

    .line 144
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    if-gt v0, v1, :cond_1d

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v0, v0

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    sub-int/2addr v0, v1

    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    add-int/2addr v0, v1

    goto :goto_b

    :cond_1d
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v1, p0, Ljava/io/PipedInputStream;->out:I
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_23

    sub-int/2addr v0, v1

    goto :goto_b

    .line 141
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 158
    monitor-exit p0

    return-void

    .line 156
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Ljava/io/PipedOutputStream;)V
    .registers 2
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p1, p0}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V

    .line 172
    return-void
.end method

.method declared-synchronized done()V
    .registers 2

    .prologue
    .line 415
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/io/PipedInputStream;->isClosed:Z

    .line 416
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 417
    monitor-exit p0

    return-void

    .line 415
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
    .line 181
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/io/PipedInputStream;->isConnected:Z

    if-eqz v0, :cond_10

    .line 182
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 181
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 184
    :cond_10
    :try_start_10
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-nez v0, :cond_1a

    .line 185
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 187
    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PipedInputStream;->isConnected:Z
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_d

    .line 188
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized read()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 210
    monitor-enter p0

    :try_start_2
    iget-boolean v4, p0, Ljava/io/PipedInputStream;->isConnected:Z

    if-nez v4, :cond_11

    .line 211
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Not connected"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_e

    .line 210
    :catchall_e
    move-exception v4

    monitor-exit p0

    throw v4

    .line 213
    :cond_11
    :try_start_11
    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-nez v4, :cond_1d

    .line 214
    new-instance v4, Ljava/io/IOException;

    const-string v5, "InputStream is closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 222
    :cond_1d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_e

    .line 224
    const/4 v0, 0x3

    .local v0, attempts:I
    move v1, v0

    .line 225
    .end local v0           #attempts:I
    .local v1, attempts:I
    :goto_25
    :try_start_25
    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v4, v6, :cond_5a

    .line 227
    iget-boolean v4, p0, Ljava/io/PipedInputStream;->isClosed:Z
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_e
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_2b} :catch_81

    if-eqz v4, :cond_30

    move v4, v6

    .line 254
    :goto_2e
    monitor-exit p0

    return v4

    .line 230
    :cond_30
    add-int/lit8 v0, v1, -0x1

    .end local v1           #attempts:I
    .restart local v0       #attempts:I
    if-gtz v1, :cond_50

    :try_start_34
    iget-object v4, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;

    if-eqz v4, :cond_50

    iget-object v4, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_50

    .line 231
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Pipe broken"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_48
    .catchall {:try_start_34 .. :try_end_48} :catchall_e
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_48} :catch_48

    .line 237
    :catch_48
    move-exception v4

    move-object v2, v4

    .line 238
    .local v2, e:Ljava/lang/InterruptedException;
    :goto_4a
    :try_start_4a
    new-instance v4, Ljava/io/InterruptedIOException;

    invoke-direct {v4}, Ljava/io/InterruptedIOException;-><init>()V

    throw v4
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_e

    .line 234
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_50
    :try_start_50
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 235
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_e
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_58} :catch_48

    move v1, v0

    .end local v0           #attempts:I
    .restart local v1       #attempts:I
    goto :goto_25

    .line 241
    :cond_5a
    :try_start_5a
    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v5, p0, Ljava/io/PipedInputStream;->out:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/io/PipedInputStream;->out:I

    aget-byte v4, v4, v5

    and-int/lit16 v3, v4, 0xff

    .line 242
    .local v3, result:I
    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v5, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v5, v5

    if-ne v4, v5, :cond_70

    .line 243
    const/4 v4, 0x0

    iput v4, p0, Ljava/io/PipedInputStream;->out:I

    .line 245
    :cond_70
    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    iget v5, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v4, v5, :cond_7c

    .line 247
    const/4 v4, -0x1

    iput v4, p0, Ljava/io/PipedInputStream;->in:I

    .line 248
    const/4 v4, 0x0

    iput v4, p0, Ljava/io/PipedInputStream;->out:I

    .line 252
    :cond_7c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7f
    .catchall {:try_start_5a .. :try_end_7f} :catchall_e

    move v4, v3

    .line 254
    goto :goto_2e

    .line 237
    .end local v3           #result:I
    :catch_81
    move-exception v4

    move-object v2, v4

    move v0, v1

    .end local v1           #attempts:I
    .restart local v0       #attempts:I
    goto :goto_4a
.end method

.method public declared-synchronized read([BII)I
    .registers 14
    .parameter "bytes"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 283
    monitor-enter p0

    :try_start_3
    array-length v7, p1

    invoke-static {v7, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_18

    .line 284
    if-nez p3, :cond_c

    move v7, v8

    .line 357
    :goto_a
    monitor-exit p0

    return v7

    .line 288
    :cond_c
    :try_start_c
    iget-boolean v7, p0, Ljava/io/PipedInputStream;->isConnected:Z

    if-nez v7, :cond_1b

    .line 289
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Not connected"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_18

    .line 283
    :catchall_18
    move-exception v7

    monitor-exit p0

    throw v7

    .line 292
    :cond_1b
    :try_start_1b
    iget-object v7, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-nez v7, :cond_27

    .line 293
    new-instance v7, Ljava/io/IOException;

    const-string v8, "InputStream is closed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 301
    :cond_27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    iput-object v7, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_18

    .line 303
    const/4 v0, 0x3

    .local v0, attempts:I
    move v1, v0

    .line 304
    .end local v0           #attempts:I
    .local v1, attempts:I
    :goto_2f
    :try_start_2f
    iget v7, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v7, v9, :cond_63

    .line 306
    iget-boolean v7, p0, Ljava/io/PipedInputStream;->isClosed:Z
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_18
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_35} :catch_cd

    if-eqz v7, :cond_39

    move v7, v9

    .line 307
    goto :goto_a

    .line 309
    :cond_39
    add-int/lit8 v0, v1, -0x1

    .end local v1           #attempts:I
    .restart local v0       #attempts:I
    if-gtz v1, :cond_59

    :try_start_3d
    iget-object v7, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;

    if-eqz v7, :cond_59

    iget-object v7, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    move-result v7

    if-nez v7, :cond_59

    .line 310
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Pipe broken"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_51
    .catchall {:try_start_3d .. :try_end_51} :catchall_18
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_51} :catch_51

    .line 316
    :catch_51
    move-exception v7

    move-object v2, v7

    .line 317
    .local v2, e:Ljava/lang/InterruptedException;
    :goto_53
    :try_start_53
    new-instance v7, Ljava/io/InterruptedIOException;

    invoke-direct {v7}, Ljava/io/InterruptedIOException;-><init>()V

    throw v7
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_18

    .line 313
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_59
    :try_start_59
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 314
    const-wide/16 v7, 0x3e8

    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_18
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_61} :catch_51

    move v1, v0

    .end local v0           #attempts:I
    .restart local v1       #attempts:I
    goto :goto_2f

    .line 320
    :cond_63
    const/4 v6, 0x0

    .line 323
    .local v6, totalCopied:I
    :try_start_64
    iget v7, p0, Ljava/io/PipedInputStream;->out:I

    iget v8, p0, Ljava/io/PipedInputStream;->in:I

    if-lt v7, v8, :cond_97

    .line 324
    iget-object v7, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v7, v7

    iget v8, p0, Ljava/io/PipedInputStream;->out:I

    sub-int v3, v7, v8

    .line 325
    .local v3, leftInBuffer:I
    if-ge v3, p3, :cond_c9

    move v5, v3

    .line 326
    .local v5, length:I
    :goto_74
    iget-object v7, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v8, p0, Ljava/io/PipedInputStream;->out:I

    invoke-static {v7, v8, p1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    iget v7, p0, Ljava/io/PipedInputStream;->out:I

    add-int/2addr v7, v5

    iput v7, p0, Ljava/io/PipedInputStream;->out:I

    .line 328
    iget v7, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v8, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v8, v8

    if-ne v7, v8, :cond_8a

    .line 329
    const/4 v7, 0x0

    iput v7, p0, Ljava/io/PipedInputStream;->out:I

    .line 331
    :cond_8a
    iget v7, p0, Ljava/io/PipedInputStream;->out:I

    iget v8, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v7, v8, :cond_96

    .line 333
    const/4 v7, -0x1

    iput v7, p0, Ljava/io/PipedInputStream;->in:I

    .line 334
    const/4 v7, 0x0

    iput v7, p0, Ljava/io/PipedInputStream;->out:I

    .line 336
    :cond_96
    add-int/2addr v6, v5

    .line 340
    .end local v3           #leftInBuffer:I
    .end local v5           #length:I
    :cond_97
    if-ge v6, p3, :cond_c3

    iget v7, p0, Ljava/io/PipedInputStream;->in:I

    if-eq v7, v9, :cond_c3

    .line 341
    iget v7, p0, Ljava/io/PipedInputStream;->in:I

    iget v8, p0, Ljava/io/PipedInputStream;->out:I

    sub-int v3, v7, v8

    .line 342
    .restart local v3       #leftInBuffer:I
    sub-int v4, p3, v6

    .line 343
    .local v4, leftToCopy:I
    if-ge v4, v3, :cond_cb

    move v5, v4

    .line 344
    .restart local v5       #length:I
    :goto_a8
    iget-object v7, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v8, p0, Ljava/io/PipedInputStream;->out:I

    add-int v9, p2, v6

    invoke-static {v7, v8, p1, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    iget v7, p0, Ljava/io/PipedInputStream;->out:I

    add-int/2addr v7, v5

    iput v7, p0, Ljava/io/PipedInputStream;->out:I

    .line 346
    iget v7, p0, Ljava/io/PipedInputStream;->out:I

    iget v8, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v7, v8, :cond_c2

    .line 348
    const/4 v7, -0x1

    iput v7, p0, Ljava/io/PipedInputStream;->in:I

    .line 349
    const/4 v7, 0x0

    iput v7, p0, Ljava/io/PipedInputStream;->out:I

    .line 351
    :cond_c2
    add-int/2addr v6, v5

    .line 355
    .end local v3           #leftInBuffer:I
    .end local v4           #leftToCopy:I
    .end local v5           #length:I
    :cond_c3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_c6
    .catchall {:try_start_64 .. :try_end_c6} :catchall_18

    move v7, v6

    .line 357
    goto/16 :goto_a

    .restart local v3       #leftInBuffer:I
    :cond_c9
    move v5, p3

    .line 325
    goto :goto_74

    .restart local v4       #leftToCopy:I
    :cond_cb
    move v5, v3

    .line 343
    goto :goto_a8

    .line 316
    .end local v3           #leftInBuffer:I
    .end local v4           #leftToCopy:I
    .end local v6           #totalCopied:I
    :catch_cd
    move-exception v7

    move-object v2, v7

    move v0, v1

    .end local v1           #attempts:I
    .restart local v0       #attempts:I
    goto :goto_53
.end method

.method protected declared-synchronized receive(I)V
    .registers 6
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Ljava/io/PipedInputStream;->isClosed:Z

    if-eqz v1, :cond_14

    .line 379
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    .line 378
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1

    .line 387
    :cond_14
    :try_start_14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 389
    :goto_1a
    :try_start_1a
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-eqz v1, :cond_49

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v1, v2, :cond_49

    .line 390
    iget-object v1, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;

    if-eqz v1, :cond_40

    iget-object v1, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_40

    .line 391
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe broken"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_38
    .catchall {:try_start_1a .. :try_end_38} :catchall_11
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_38} :catch_38

    .line 396
    :catch_38
    move-exception v1

    move-object v0, v1

    .line 397
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3a
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_11

    .line 393
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_40
    :try_start_40
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 394
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_11
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_48} :catch_38

    goto :goto_1a

    .line 399
    :cond_49
    :try_start_49
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-nez v1, :cond_55

    .line 400
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    :cond_55
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5d

    .line 403
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedInputStream;->in:I

    .line 405
    :cond_5d
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/PipedInputStream;->in:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 406
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_72

    .line 407
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedInputStream;->in:I

    .line 411
    :cond_72
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_75
    .catchall {:try_start_49 .. :try_end_75} :catchall_11

    .line 412
    monitor-exit p0

    return-void
.end method
