.class public Ljava/util/zip/Inflater;
.super Ljava/lang/Object;
.source "Inflater.java"


# instance fields
.field private finished:Z

.field private final guard:Ldalvik/system/CloseGuard;

.field private inLength:I

.field private inRead:I

.field private needsDictionary:Z

.field private streamHandle:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4
    .parameter "noHeader"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    .line 61
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    .line 81
    invoke-direct {p0, p1}, Ljava/util/zip/Inflater;->createStream(Z)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    .line 82
    iget-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "end"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private checkOpen()V
    .registers 5

    .prologue
    .line 324
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 325
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to use Inflater after calling end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_10
    return-void
.end method

.method private native createStream(Z)J
.end method

.method private native endImpl(J)V
.end method

.method private native getAdlerImpl(J)I
.end method

.method private native getTotalInImpl(J)J
.end method

.method private native getTotalOutImpl(J)J
.end method

.method private native inflateImpl([BIIJ)I
.end method

.method private native resetImpl(J)V
.end method

.method private native setDictionaryImpl([BIIJ)V
.end method

.method private native setFileInputImpl(Ljava/io/FileDescriptor;JIJ)I
.end method

.method private native setInputImpl([BIIJ)V
.end method


# virtual methods
.method public declared-synchronized end()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 94
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 95
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    .line 96
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->endImpl(J)V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Inflater;->inRead:I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Inflater;->inLength:I

    .line 99
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    .line 101
    :cond_1d
    monitor-exit p0

    return-void

    .line 94
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_9

    .line 108
    iget-object v1, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 110
    :cond_9
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->end()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_17

    .line 113
    :try_start_c
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_10

    .line 118
    return-void

    .line 114
    :catch_10
    move-exception v0

    .line 115
    .local v0, t:Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 112
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_17
    move-exception v1

    .line 113
    :try_start_18
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 115
    throw v1

    .line 114
    :catch_1c
    move-exception v0

    .line 115
    .restart local v0       #t:Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public declared-synchronized finished()Z
    .registers 2

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/util/zip/Inflater;->finished:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAdler()I
    .registers 3

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    .line 139
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->getAdlerImpl(J)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 138
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBytesRead()J
    .registers 3

    .prologue
    .line 150
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    .line 151
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->getTotalInImpl(J)J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 150
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBytesWritten()J
    .registers 3

    .prologue
    .line 160
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    .line 161
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->getTotalOutImpl(J)J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 160
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemaining()I
    .registers 3

    .prologue
    .line 169
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/zip/Inflater;->inLength:I

    iget v1, p0, Ljava/util/zip/Inflater;->inRead:I
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

.method public declared-synchronized getTotalIn()I
    .registers 5

    .prologue
    .line 177
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    .line 178
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->getTotalInImpl(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_14

    move-result-wide v0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    .line 177
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalOut()I
    .registers 5

    .prologue
    .line 188
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    .line 189
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->getTotalOutImpl(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_14

    move-result-wide v0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    .line 188
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public inflate([B)I
    .registers 4
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized inflate([BII)I
    .registers 12
    .parameter "buf"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 218
    monitor-enter p0

    :try_start_2
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 220
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    .line 222
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->needsInput()Z
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_2f

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    .line 232
    :goto_10
    monitor-exit p0

    return v0

    .line 226
    :cond_12
    :try_start_12
    iget-boolean v6, p0, Ljava/util/zip/Inflater;->needsDictionary:Z

    .line 227
    .local v6, neededDict:Z
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Inflater;->needsDictionary:Z

    .line 228
    iget-wide v4, p0, Ljava/util/zip/Inflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Inflater;->inflateImpl([BIIJ)I

    move-result v7

    .line 229
    .local v7, result:I
    iget-boolean v0, p0, Ljava/util/zip/Inflater;->needsDictionary:Z

    if-eqz v0, :cond_32

    if-eqz v6, :cond_32

    .line 230
    new-instance v0, Ljava/util/zip/DataFormatException;

    const-string v1, "Needs dictionary"

    invoke-direct {v0, v1}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_2f

    .line 218
    .end local v6           #neededDict:Z
    .end local v7           #result:I
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local v6       #neededDict:Z
    .restart local v7       #result:I
    :cond_32
    move v0, v7

    .line 232
    goto :goto_10
.end method

.method public declared-synchronized needsDictionary()Z
    .registers 2

    .prologue
    .line 245
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/util/zip/Inflater;->needsDictionary:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized needsInput()Z
    .registers 3

    .prologue
    .line 252
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/zip/Inflater;->inRead:I

    iget v1, p0, Ljava/util/zip/Inflater;->inLength:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 3

    .prologue
    .line 260
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Inflater;->finished:Z

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Inflater;->needsDictionary:Z

    .line 263
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Inflater;->inRead:I

    iput v0, p0, Ljava/util/zip/Inflater;->inLength:I

    .line 264
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->resetImpl(J)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 265
    monitor-exit p0

    return-void

    .line 260
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDictionary([B)V
    .registers 4
    .parameter "dictionary"

    .prologue
    .line 274
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Inflater;->setDictionary([BII)V
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    .line 275
    monitor-exit p0

    return-void

    .line 274
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDictionary([BII)V
    .registers 10
    .parameter "dictionary"
    .parameter "offset"
    .parameter "byteCount"

    .prologue
    .line 283
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    .line 284
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 285
    iget-wide v4, p0, Ljava/util/zip/Inflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Inflater;->setDictionaryImpl([BIIJ)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 286
    monitor-exit p0

    return-void

    .line 283
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setFileInput(Ljava/io/FileDescriptor;JI)I
    .registers 12
    .parameter "fd"
    .parameter "offset"
    .parameter "byteCount"

    .prologue
    .line 314
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    .line 315
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Inflater;->inRead:I

    .line 316
    iget-wide v5, p0, Ljava/util/zip/Inflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/zip/Inflater;->setFileInputImpl(Ljava/io/FileDescriptor;JIJ)I

    move-result v0

    iput v0, p0, Ljava/util/zip/Inflater;->inLength:I

    .line 317
    iget v0, p0, Ljava/util/zip/Inflater;->inLength:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return v0

    .line 314
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setInput([B)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 295
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Inflater;->setInput([BII)V
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    .line 296
    monitor-exit p0

    return-void

    .line 295
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setInput([BII)V
    .registers 10
    .parameter "buf"
    .parameter "offset"
    .parameter "byteCount"

    .prologue
    .line 303
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    .line 304
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Inflater;->inRead:I

    .line 306
    iput p3, p0, Ljava/util/zip/Inflater;->inLength:I

    .line 307
    iget-wide v4, p0, Ljava/util/zip/Inflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Inflater;->setInputImpl([BIIJ)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 308
    monitor-exit p0

    return-void

    .line 303
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method
