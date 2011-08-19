.class public Ljava/util/zip/Deflater;
.super Ljava/lang/Object;
.source "Deflater.java"


# static fields
.field public static final BEST_COMPRESSION:I = 0x9

.field public static final BEST_SPEED:I = 0x1

.field public static final DEFAULT_COMPRESSION:I = -0x1

.field public static final DEFAULT_STRATEGY:I = 0x0

.field public static final DEFLATED:I = 0x8

.field public static final FILTERED:I = 0x1

.field private static final FINISH:I = 0x4

.field public static final FULL_FLUSH:I = 0x3

.field public static final HUFFMAN_ONLY:I = 0x2

.field public static final NO_COMPRESSION:I = 0x0

.field public static final NO_FLUSH:I = 0x0

.field public static final SYNC_FLUSH:I = 0x2


# instance fields
.field private compressLevel:I

.field private finished:Z

.field private flushParm:I

.field private final guard:Ldalvik/system/CloseGuard;

.field private inLength:I

.field private inRead:I

.field private inputBuffer:[B

.field private strategy:I

.field private streamHandle:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 159
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 160
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "level"

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 173
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 6
    .parameter "level"
    .parameter "noHeader"

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput v0, p0, Ljava/util/zip/Deflater;->flushParm:I

    .line 138
    iput v2, p0, Ljava/util/zip/Deflater;->compressLevel:I

    .line 140
    iput v0, p0, Ljava/util/zip/Deflater;->strategy:I

    .line 142
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    .line 150
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    .line 188
    if-lt p1, v2, :cond_1b

    const/16 v0, 0x9

    if-le p1, v0, :cond_21

    .line 189
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 191
    :cond_21
    iput p1, p0, Ljava/util/zip/Deflater;->compressLevel:I

    .line 192
    iget v0, p0, Ljava/util/zip/Deflater;->compressLevel:I

    iget v1, p0, Ljava/util/zip/Deflater;->strategy:I

    invoke-direct {p0, v0, v1, p2}, Ljava/util/zip/Deflater;->createStream(IIZ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    .line 193
    iget-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "end"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method private checkOpen()V
    .registers 5

    .prologue
    .line 474
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 475
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to use Deflater after calling end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_10
    return-void
.end method

.method private native createStream(IIZ)J
.end method

.method private declared-synchronized deflateImpl([BIII)I
    .registers 12
    .parameter "buf"
    .parameter "offset"
    .parameter "byteCount"
    .parameter "flush"

    .prologue
    .line 237
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    .line 238
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 239
    iget-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    if-nez v0, :cond_11

    .line 240
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-virtual {p0, v0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 242
    :cond_11
    iget-wide v4, p0, Ljava/util/zip/Deflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/zip/Deflater;->deflateImpl([BIIJI)I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1e

    move-result v0

    monitor-exit p0

    return v0

    .line 237
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native deflateImpl([BIIJI)I
.end method

.method private endImpl()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 259
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    .line 260
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->endImpl(J)V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    .line 262
    iput-wide v2, p0, Ljava/util/zip/Deflater;->streamHandle:J

    .line 264
    :cond_12
    return-void
.end method

.method private native endImpl(J)V
.end method

.method private native getAdlerImpl(J)I
.end method

.method private native getTotalInImpl(J)J
.end method

.method private native getTotalOutImpl(J)J
.end method

.method private native resetImpl(J)V
.end method

.method private native setDictionaryImpl([BIIJ)V
.end method

.method private native setInputImpl([BIIJ)V
.end method

.method private native setLevelsImpl(IIJ)V
.end method


# virtual methods
.method public deflate([B)I
    .registers 4
    .parameter "buf"

    .prologue
    .line 203
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized deflate([BII)I
    .registers 5
    .parameter "buf"
    .parameter "offset"
    .parameter "byteCount"

    .prologue
    .line 213
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/zip/Deflater;->flushParm:I

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/util/zip/Deflater;->deflateImpl([BIII)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deflate([BIII)I
    .registers 8
    .parameter "buf"
    .parameter "offset"
    .parameter "byteCount"
    .parameter "flush"

    .prologue
    .line 230
    monitor-enter p0

    if-eqz p4, :cond_25

    const/4 v0, 0x2

    if-eq p4, v0, :cond_25

    const/4 v0, 0x3

    if-eq p4, v0, :cond_25

    .line 231
    :try_start_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad flush value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_22

    .line 230
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    .line 233
    :cond_25
    :try_start_25
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/zip/Deflater;->deflateImpl([BIII)I
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized end()V
    .registers 2

    .prologue
    .line 254
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 255
    invoke-direct {p0}, Ljava/util/zip/Deflater;->endImpl()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 256
    monitor-exit p0

    return-void

    .line 254
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 270
    :try_start_0
    iget-object v1, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_9

    .line 271
    iget-object v1, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 273
    :cond_9
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_18

    .line 274
    :try_start_a
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->end()V

    .line 275
    invoke-direct {p0}, Ljava/util/zip/Deflater;->endImpl()V

    .line 276
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_15

    .line 279
    :try_start_11
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_1d

    .line 284
    return-void

    .line 276
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 278
    :catchall_18
    move-exception v1

    .line 279
    :try_start_19
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_24

    .line 281
    throw v1

    .line 280
    :catch_1d
    move-exception v0

    .line 281
    .local v0, t:Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 280
    .end local v0           #t:Ljava/lang/Throwable;
    :catch_24
    move-exception v0

    .line 281
    .restart local v0       #t:Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public declared-synchronized finish()V
    .registers 2

    .prologue
    .line 293
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_2
    iput v0, p0, Ljava/util/zip/Deflater;->flushParm:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 294
    monitor-exit p0

    return-void

    .line 293
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized finished()Z
    .registers 2

    .prologue
    .line 300
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/util/zip/Deflater;->finished:Z
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
    .line 307
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    .line 308
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getAdlerImpl(J)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 307
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBytesRead()J
    .registers 3

    .prologue
    .line 457
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    .line 458
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getTotalInImpl(J)J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 457
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBytesWritten()J
    .registers 3

    .prologue
    .line 467
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    .line 468
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getTotalOutImpl(J)J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 467
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalIn()I
    .registers 3

    .prologue
    .line 318
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    .line 319
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getTotalInImpl(J)J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    move-result-wide v0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    .line 318
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalOut()I
    .registers 3

    .prologue
    .line 329
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    .line 330
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getTotalOutImpl(J)J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    move-result-wide v0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    .line 329
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized needsInput()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 341
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_13

    if-nez v0, :cond_9

    move v0, v2

    .line 344
    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    :try_start_9
    iget v0, p0, Ljava/util/zip/Deflater;->inRead:I

    iget v1, p0, Ljava/util/zip/Deflater;->inLength:I
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_13

    if-ne v0, v1, :cond_11

    move v0, v2

    goto :goto_7

    :cond_11
    const/4 v0, 0x0

    goto :goto_7

    .line 341
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 3

    .prologue
    .line 354
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    .line 355
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Deflater;->flushParm:I

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Deflater;->finished:Z

    .line 357
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->resetImpl(J)V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 359
    monitor-exit p0

    return-void

    .line 354
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDictionary([B)V
    .registers 4
    .parameter "dictionary"

    .prologue
    .line 370
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Deflater;->setDictionary([BII)V

    .line 371
    return-void
.end method

.method public declared-synchronized setDictionary([BII)V
    .registers 10
    .parameter "buf"
    .parameter "offset"
    .parameter "byteCount"

    .prologue
    .line 380
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    .line 381
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 382
    iget-wide v4, p0, Ljava/util/zip/Deflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Deflater;->setDictionaryImpl([BIIJ)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 383
    monitor-exit p0

    return-void

    .line 380
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInput([B)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 392
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 393
    return-void
.end method

.method public declared-synchronized setInput([BII)V
    .registers 10
    .parameter "buf"
    .parameter "offset"
    .parameter "byteCount"

    .prologue
    .line 400
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    .line 401
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 402
    iput p3, p0, Ljava/util/zip/Deflater;->inLength:I

    .line 403
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Deflater;->inRead:I

    .line 404
    iget-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    if-nez v0, :cond_1a

    .line 405
    iget v0, p0, Ljava/util/zip/Deflater;->compressLevel:I

    iget v1, p0, Ljava/util/zip/Deflater;->strategy:I

    iget-wide v2, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/zip/Deflater;->setLevelsImpl(IIJ)V

    .line 407
    :cond_1a
    iput-object p1, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    .line 408
    iget-wide v4, p0, Ljava/util/zip/Deflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Deflater;->setInputImpl([BIIJ)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 409
    monitor-exit p0

    return-void

    .line 400
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLevel(I)V
    .registers 5
    .parameter "level"

    .prologue
    .line 423
    monitor-enter p0

    const/4 v0, -0x1

    if-lt p1, v0, :cond_8

    const/16 v0, 0x9

    if-le p1, v0, :cond_24

    .line 424
    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_21

    .line 423
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    .line 426
    :cond_24
    :try_start_24
    iget-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    if-eqz v0, :cond_30

    .line 427
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setLevel cannot be called after setInput"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_30
    iput p1, p0, Ljava/util/zip/Deflater;->compressLevel:I
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_21

    .line 430
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setStrategy(I)V
    .registers 5
    .parameter "strategy"

    .prologue
    .line 442
    monitor-enter p0

    if-ltz p1, :cond_6

    const/4 v0, 0x2

    if-le p1, v0, :cond_22

    .line 443
    :cond_6
    :try_start_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad strategy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1f

    .line 442
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 445
    :cond_22
    :try_start_22
    iget-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    if-eqz v0, :cond_2e

    .line 446
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setStrategy cannot be called after setInput"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_2e
    iput p1, p0, Ljava/util/zip/Deflater;->strategy:I
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_1f

    .line 449
    monitor-exit p0

    return-void
.end method
