.class public Ljava/io/RandomAccessFile;
.super Ljava/lang/Object;
.source "RandomAccessFile.java"

# interfaces
.implements Ljava/io/DataInput;
.implements Ljava/io/DataOutput;
.implements Ljava/io/Closeable;


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private fd:Ljava/io/FileDescriptor;

.field private final guard:Ldalvik/system/CloseGuard;

.field private mode:I

.field private final scratch:[B

.field private syncMetadata:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 9
    .parameter "file"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    .line 54
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v2

    iput-object v2, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    .line 56
    const/16 v2, 0x8

    new-array v2, v2, [B

    iput-object v2, p0, Ljava/io/RandomAccessFile;->scratch:[B

    .line 106
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    .line 108
    const-string v2, "r"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 109
    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iput-boolean v3, v2, Ljava/io/FileDescriptor;->readOnly:Z

    .line 110
    const/4 v0, 0x0

    .line 124
    .local v0, options:I
    :cond_27
    :goto_27
    iput v0, p0, Ljava/io/RandomAccessFile;->mode:I

    .line 126
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 127
    .local v1, security:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_45

    .line 128
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 129
    const-string v2, "r"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 130
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 134
    :cond_45
    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    sget-object v3, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Ljava/io/RandomAccessFile;->mode:I

    invoke-interface {v3, v4, v5}, Lorg/apache/harmony/luni/platform/IFileSystem;->open(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Ljava/io/FileDescriptor;->descriptor:I

    .line 137
    iget-boolean v2, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    if-eqz v2, :cond_5e

    .line 139
    :try_start_59
    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5e} :catch_af

    .line 144
    :cond_5e
    :goto_5e
    iget-object v2, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    const-string v3, "close"

    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 145
    return-void

    .line 111
    .end local v0           #options:I
    .end local v1           #security:Ljava/lang/SecurityManager;
    :cond_66
    const-string v2, "rw"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7e

    const-string v2, "rws"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7e

    const-string v2, "rwd"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 112
    :cond_7e
    const/16 v0, 0x10

    .line 114
    .restart local v0       #options:I
    const-string v2, "rws"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 116
    iput-boolean v3, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    goto :goto_27

    .line 117
    :cond_8b
    const-string v2, "rwd"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 119
    const/16 v0, 0x20

    goto :goto_27

    .line 122
    .end local v0           #options:I
    :cond_96
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    .restart local v0       #options:I
    .restart local v1       #security:Ljava/lang/SecurityManager;
    :catch_af
    move-exception v2

    goto :goto_5e
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "fileName"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method private declared-synchronized openCheck()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v0, v0, Ljava/io/FileDescriptor;->descriptor:I

    if-gez v0, :cond_10

    .line 258
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 257
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 260
    :cond_10
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 182
    monitor-enter p0

    .line 183
    :try_start_6
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 184
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    .line 187
    :cond_1a
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 188
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    .line 190
    :cond_2b
    monitor-exit p0

    .line 191
    return-void

    .line 190
    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 195
    :try_start_0
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 196
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 198
    :cond_9
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 200
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 202
    return-void

    .line 200
    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final declared-synchronized getChannel()Ljava/nio/channels/FileChannel;
    .registers 3

    .prologue
    .line 215
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_11

    .line 216
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v0, v0, Ljava/io/FileDescriptor;->descriptor:I

    iget v1, p0, Ljava/io/RandomAccessFile;->mode:I

    invoke-static {p0, v0, v1}, Ljava/nio/NioUtils;->newFileChannel(Ljava/lang/Object;II)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    .line 218
    :cond_11
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    .line 215
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getFD()Ljava/io/FileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getFilePointer()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/io/RandomAccessFile;->openCheck()V

    .line 246
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v1, v1, Ljava/io/FileDescriptor;->descriptor:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/harmony/luni/platform/IFileSystem;->seek(IJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/io/RandomAccessFile;->openCheck()V

    .line 271
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v1, v1, Ljava/io/FileDescriptor;->descriptor:I

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/IFileSystem;->length(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 285
    invoke-direct {p0}, Ljava/io/RandomAccessFile;->openCheck()V

    .line 286
    sget-object v2, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v3, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v3, v3, Ljava/io/FileDescriptor;->descriptor:I

    iget-object v4, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v6, v5}, Lorg/apache/harmony/luni/platform/IFileSystem;->read(I[BII)J

    move-result-wide v0

    .line 287
    .local v0, byteCount:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_19

    const/4 v2, -0x1

    :goto_18
    return v2

    :cond_19
    iget-object v2, p0, Ljava/io/RandomAccessFile;->scratch:[B

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    goto :goto_18
.end method

.method public read([B)I
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 330
    if-nez p3, :cond_8

    .line 331
    const/4 v0, 0x0

    .line 334
    :goto_7
    return v0

    .line 333
    :cond_8
    invoke-direct {p0}, Ljava/io/RandomAccessFile;->openCheck()V

    .line 334
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v1, v1, Ljava/io/FileDescriptor;->descriptor:I

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/apache/harmony/luni/platform/IFileSystem;->read(I[BII)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_7
.end method

.method public final readBoolean()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 351
    .local v0, temp:I
    if-gez v0, :cond_c

    .line 352
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 354
    :cond_c
    if-eqz v0, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public final readByte()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 371
    .local v0, temp:I
    if-gez v0, :cond_c

    .line 372
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 374
    :cond_c
    int-to-byte v1, v0

    return v1
.end method

.method public final readChar()C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .registers 4
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 430
    return-void
.end method

.method public final readFully([BII)V
    .registers 6
    .parameter "dst"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 460
    :goto_4
    if-lez p3, :cond_15

    .line 461
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 462
    .local v0, result:I
    if-gez v0, :cond_12

    .line 463
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 465
    :cond_12
    add-int/2addr p2, v0

    .line 466
    sub-int/2addr p3, v0

    .line 467
    goto :goto_4

    .line 468
    .end local v0           #result:I
    :cond_15
    return-void
.end method

.method public final readInt()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 483
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 484
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    return v0
.end method

.method public final readLine()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v5, 0x50

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 503
    .local v1, line:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 504
    .local v0, foundTerminator:Z
    const-wide/16 v3, 0x0

    .line 506
    .local v3, unreadPosition:J
    :goto_a
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    .line 507
    .local v2, nextByte:I
    sparse-switch v2, :sswitch_data_42

    .line 522
    if-eqz v0, :cond_3d

    .line 523
    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 524
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1a
    return-object v5

    .line 509
    :sswitch_1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1a

    :cond_26
    const/4 v5, 0x0

    goto :goto_1a

    .line 511
    :sswitch_28
    if-eqz v0, :cond_32

    .line 512
    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 513
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1a

    .line 515
    :cond_32
    const/4 v0, 0x1

    .line 517
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    .line 518
    goto :goto_a

    .line 520
    :sswitch_38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1a

    .line 526
    :cond_3d
    int-to-char v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 507
    :sswitch_data_42
    .sparse-switch
        -0x1 -> :sswitch_1b
        0xa -> :sswitch_38
        0xd -> :sswitch_28
    .end sparse-switch
.end method

.method public final readLong()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 544
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 545
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->peekLong([BILjava/nio/ByteOrder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readShort()S
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 561
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 562
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    return v0
.end method

.method public final readUTF()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 619
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v1

    .line 620
    .local v1, utfSize:I
    if-nez v1, :cond_a

    .line 621
    const-string v2, ""

    .line 627
    :goto_9
    return-object v2

    .line 623
    :cond_a
    new-array v0, v1, [B

    .line 624
    .local v0, buf:[B
    array-length v2, v0

    invoke-virtual {p0, v0, v4, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    array-length v3, v0

    if-eq v2, v3, :cond_1a

    .line 625
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 627
    :cond_1a
    new-array v2, v1, [C

    invoke-static {v0, v2, v4, v1}, Ljava/nio/charset/ModifiedUtf8;->decode([B[CII)Ljava/lang/String;

    move-result-object v2

    goto :goto_9
.end method

.method public final readUnsignedByte()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 579
    .local v0, temp:I
    if-gez v0, :cond_c

    .line 580
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 582
    :cond_c
    return v0
.end method

.method public final readUnsignedShort()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public seek(J)V
    .registers 6
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1f

    .line 646
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_1f
    invoke-direct {p0}, Ljava/io/RandomAccessFile;->openCheck()V

    .line 649
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v1, v1, Ljava/io/FileDescriptor;->descriptor:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, p2, v2}, Lorg/apache/harmony/luni/platform/IFileSystem;->seek(IJI)J

    .line 650
    return-void
.end method

.method public setLength(J)V
    .registers 7
    .parameter "newLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    invoke-direct {p0}, Ljava/io/RandomAccessFile;->openCheck()V

    .line 668
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_11

    .line 669
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "newLength < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 671
    :cond_11
    sget-object v2, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v3, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v3, v3, Ljava/io/FileDescriptor;->descriptor:I

    invoke-interface {v2, v3, p1, p2}, Lorg/apache/harmony/luni/platform/IFileSystem;->truncate(IJ)V

    .line 673
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 674
    .local v0, filePointer:J
    cmp-long v2, v0, p1

    if-lez v2, :cond_25

    .line 675
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 679
    :cond_25
    iget-boolean v2, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    if-eqz v2, :cond_2e

    .line 680
    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    .line 682
    :cond_2e
    return-void
.end method

.method public skipBytes(I)I
    .registers 9
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    if-lez p1, :cond_1c

    .line 698
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .local v0, currentPos:J
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 699
    .local v2, eof:J
    int-to-long v5, p1

    add-long/2addr v5, v0

    cmp-long v5, v5, v2

    if-lez v5, :cond_1a

    sub-long v5, v2, v0

    :goto_12
    long-to-int v4, v5

    .line 700
    .local v4, newCount:I
    int-to-long v5, v4

    add-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    move v5, v4

    .line 703
    .end local v0           #currentPos:J
    .end local v2           #eof:J
    .end local v4           #newCount:I
    :goto_19
    return v5

    .line 699
    .restart local v0       #currentPos:J
    .restart local v2       #eof:J
    :cond_1a
    int-to-long v5, p1

    goto :goto_12

    .line 703
    .end local v0           #currentPos:J
    .end local v2           #eof:J
    :cond_1c
    const/4 v5, 0x0

    goto :goto_19
.end method

.method public write(I)V
    .registers 7
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 761
    invoke-direct {p0}, Ljava/io/RandomAccessFile;->openCheck()V

    .line 762
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 763
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v1, v1, Ljava/io/FileDescriptor;->descriptor:I

    iget-object v2, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v4, v3}, Lorg/apache/harmony/luni/platform/IFileSystem;->write(I[BII)J

    .line 766
    iget-boolean v0, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    if-eqz v0, :cond_20

    .line 767
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 769
    :cond_20
    return-void
.end method

.method public write([B)V
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 716
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 717
    return-void
.end method

.method public write([BII)V
    .registers 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 737
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 738
    if-nez p3, :cond_7

    .line 748
    :cond_6
    :goto_6
    return-void

    .line 741
    :cond_7
    invoke-direct {p0}, Ljava/io/RandomAccessFile;->openCheck()V

    .line 742
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v1, v1, Ljava/io/FileDescriptor;->descriptor:I

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/apache/harmony/luni/platform/IFileSystem;->write(I[BII)J

    .line 745
    iget-boolean v0, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    if-eqz v0, :cond_6

    .line 746
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    goto :goto_6
.end method

.method public final writeBoolean(Z)V
    .registers 3
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 782
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 783
    return-void

    .line 782
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final writeByte(I)V
    .registers 3
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 797
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 798
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .registers 5
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 810
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [B

    .line 811
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, index:I
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 812
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 811
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 814
    :cond_19
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 815
    return-void
.end method

.method public final writeChar(I)V
    .registers 2
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 830
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .registers 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 843
    const-string v0, "UTF-16BE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 844
    return-void
.end method

.method public final writeDouble(D)V
    .registers 5
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 858
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 859
    return-void
.end method

.method public final writeFloat(F)V
    .registers 3
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 873
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 874
    return-void
.end method

.method public final writeInt(I)V
    .registers 5
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 887
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, p1, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 888
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 889
    return-void
.end method

.method public final writeLong(J)V
    .registers 6
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 902
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, p1, p2, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    .line 903
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 904
    return-void
.end method

.method public final writeShort(I)V
    .registers 6
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 919
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    int-to-short v1, p1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v3, v1, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 920
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v3, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 921
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .registers 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 937
    invoke-static {p1}, Ljava/nio/charset/ModifiedUtf8;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 938
    return-void
.end method
