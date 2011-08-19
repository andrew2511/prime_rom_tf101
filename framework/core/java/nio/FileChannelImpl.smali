.class abstract Ljava/nio/FileChannelImpl;
.super Ljava/nio/channels/FileChannel;
.source "FileChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/FileChannelImpl$FileLockImpl;
    }
.end annotation


# static fields
.field private static final ALLOC_GRANULARITY:I

.field private static final LOCK_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final handle:I

.field private final locks:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field

.field private final repositioningLock:Ljava/lang/Object;

.field private final stream:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    invoke-interface {v0}, Lorg/apache/harmony/luni/platform/IFileSystem;->getAllocGranularity()I

    move-result v0

    sput v0, Ljava/nio/FileChannelImpl;->ALLOC_GRANULARITY:I

    .line 47
    new-instance v0, Ljava/nio/FileChannelImpl$1;

    invoke-direct {v0}, Ljava/nio/FileChannelImpl$1;-><init>()V

    sput-object v0, Ljava/nio/FileChannelImpl;->LOCK_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 5
    .parameter "stream"
    .parameter "handle"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    .line 59
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/nio/FileChannelImpl;->LOCK_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/FileChannelImpl;->repositioningLock:Ljava/lang/Object;

    .line 70
    iput p2, p0, Ljava/nio/FileChannelImpl;->handle:I

    .line 71
    iput-object p1, p0, Ljava/nio/FileChannelImpl;->stream:Ljava/lang/Object;

    .line 72
    return-void
.end method

.method private declared-synchronized addLock(Ljava/nio/channels/FileLock;)V
    .registers 10
    .parameter "lock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation

    .prologue
    .line 602
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v6

    add-long v2, v4, v6

    .line 603
    .local v2, lockEnd:J
    iget-object v4, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileLock;

    .line 604
    .local v0, existingLock:Ljava/nio/channels/FileLock;
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_2c

    .line 613
    .end local v0           #existingLock:Ljava/nio/channels/FileLock;
    :cond_25
    iget-object v4, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    invoke-interface {v4, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_40

    .line 614
    monitor-exit p0

    return-void

    .line 609
    .restart local v0       #existingLock:Ljava/nio/channels/FileLock;
    :cond_2c
    :try_start_2c
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Ljava/nio/channels/FileLock;->overlaps(JJ)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 610
    new-instance v4, Ljava/nio/channels/OverlappingFileLockException;

    invoke-direct {v4}, Ljava/nio/channels/OverlappingFileLockException;-><init>()V

    throw v4
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_40

    .line 602
    .end local v0           #existingLock:Ljava/nio/channels/FileLock;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #lockEnd:J
    :catchall_40
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method static calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I
    .registers 7
    .parameter "buffers"
    .parameter "offset"
    .parameter "length"
    .parameter "copyingIn"

    .prologue
    .line 582
    const/4 v0, 0x0

    .line 583
    .local v0, count:I
    move v1, p1

    .local v1, i:I
    :goto_2
    add-int v2, p1, p2

    if-ge v1, v2, :cond_17

    .line 584
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v0, v2

    .line 585
    if-eqz p3, :cond_14

    .line 586
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/nio/FileChannelImpl;->checkWritable(Ljava/nio/ByteBuffer;)V

    .line 583
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 589
    :cond_17
    return v0
.end method

.method static checkWritable(Ljava/nio/ByteBuffer;)V
    .registers 3
    .parameter "buffer"

    .prologue
    .line 571
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 572
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "read-only buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_e
    return-void
.end method

.method private kernelTransfer(ILjava/io/FileDescriptor;JJ)J
    .registers 17
    .parameter "l"
    .parameter "fd"
    .parameter "position"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    const/4 v7, 0x0

    .line 416
    .local v7, completed:Z
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V

    .line 417
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/IFileSystem;->transfer(ILjava/io/FileDescriptor;JJ)J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    move-result-wide v8

    .line 418
    .local v8, ret:J
    const/4 v7, 0x1

    .line 421
    invoke-virtual {p0, v7}, Ljava/nio/FileChannelImpl;->end(Z)V

    return-wide v8

    .end local v8           #ret:J
    :catchall_13
    move-exception v0

    invoke-virtual {p0, v7}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v0
.end method

.method private declared-synchronized removeLock(Ljava/nio/channels/FileLock;)V
    .registers 3
    .parameter "lock"

    .prologue
    .line 621
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 622
    monitor-exit p0

    return-void

    .line 621
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;)I
    .registers 11
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    const/4 v2, 0x0

    .line 478
    .local v2, completed:Z
    iget-object v3, p0, Ljava/nio/FileChannelImpl;->repositioningLock:Ljava/lang/Object;

    monitor-enter v3

    .line 479
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_37

    move-result v4

    if-eqz v4, :cond_3a

    .line 481
    :try_start_a
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V

    .line 482
    invoke-static {p1}, Ljava/nio/NioUtils;->getDirectBufferAddress(Ljava/nio/Buffer;)I

    move-result v0

    .line 483
    .local v0, address:I
    sget-object v4, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v5, p0, Ljava/nio/FileChannelImpl;->handle:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-interface {v4, v5, v0, v6, v7}, Lorg/apache/harmony/luni/platform/IFileSystem;->writeDirect(IIII)J
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_32

    move-result-wide v4

    long-to-int v1, v4

    .line 485
    .local v1, bytesWritten:I
    const/4 v2, 0x1

    .line 487
    :try_start_23
    invoke-virtual {p0, v2}, Ljava/nio/FileChannelImpl;->end(Z)V

    .line 500
    .end local v0           #address:I
    :goto_26
    if-lez v1, :cond_30

    .line 501
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 503
    :cond_30
    monitor-exit v3

    .line 504
    return v1

    .line 487
    .end local v1           #bytesWritten:I
    :catchall_32
    move-exception v4

    invoke-virtual {p0, v2}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v4

    .line 503
    :catchall_37
    move-exception v4

    monitor-exit v3
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_37

    throw v4

    .line 491
    :cond_3a
    :try_start_3a
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V

    .line 492
    sget-object v4, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v5, p0, Ljava/nio/FileChannelImpl;->handle:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/apache/harmony/luni/platform/IFileSystem;->write(I[BII)J
    :try_end_55
    .catchall {:try_start_3a .. :try_end_55} :catchall_5c

    move-result-wide v4

    long-to-int v1, v4

    .line 495
    .restart local v1       #bytesWritten:I
    const/4 v2, 0x1

    .line 497
    :try_start_58
    invoke-virtual {p0, v2}, Ljava/nio/FileChannelImpl;->end(Z)V

    goto :goto_26

    .end local v1           #bytesWritten:I
    :catchall_5c
    move-exception v4

    invoke-virtual {p0, v2}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v4
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_37
.end method


# virtual methods
.method protected basicLock(JJZZ)Ljava/nio/channels/FileLock;
    .registers 16
    .parameter "position"
    .parameter "size"
    .parameter "shared"
    .parameter "wait"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 93
    cmp-long v1, p1, v2

    if-ltz v1, :cond_a

    cmp-long v1, p3, v2

    if-gez v1, :cond_12

    .line 94
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Lock position and size must be non-negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_12
    if-eqz p5, :cond_31

    const/4 v1, 0x1

    move v7, v1

    .line 97
    .local v7, lockType:I
    :goto_16
    new-instance v0, Ljava/nio/FileChannelImpl$FileLockImpl;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Ljava/nio/FileChannelImpl$FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 98
    .local v0, pendingLock:Ljava/nio/channels/FileLock;
    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->addLock(Ljava/nio/channels/FileLock;)V

    .line 100
    sget-object v1, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v2, p0, Ljava/nio/FileChannelImpl;->handle:I

    move-wide v3, p1

    move-wide v5, p3

    move v8, p6

    invoke-interface/range {v1 .. v8}, Lorg/apache/harmony/luni/platform/IFileSystem;->lock(IJJIZ)Z

    move-result v1

    if-eqz v1, :cond_34

    move-object v1, v0

    .line 106
    :goto_30
    return-object v1

    .line 96
    .end local v0           #pendingLock:Ljava/nio/channels/FileLock;
    .end local v7           #lockType:I
    :cond_31
    const/4 v1, 0x2

    move v7, v1

    goto :goto_16

    .line 105
    .restart local v0       #pendingLock:Ljava/nio/channels/FileLock;
    .restart local v7       #lockType:I
    :cond_34
    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->removeLock(Ljava/nio/channels/FileLock;)V

    .line 106
    const/4 v1, 0x0

    goto :goto_30
.end method

.method public force(Z)V
    .registers 4
    .parameter "metadata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->openCheck()V

    .line 164
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v1, p0, Ljava/nio/FileChannelImpl;->handle:I

    invoke-interface {v0, v1, p1}, Lorg/apache/harmony/luni/platform/IFileSystem;->fsync(IZ)V

    .line 165
    return-void
.end method

.method public getHandle()I
    .registers 2

    .prologue
    .line 593
    iget v0, p0, Ljava/nio/FileChannelImpl;->handle:I

    return v0
.end method

.method protected implCloseChannel()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Ljava/nio/FileChannelImpl;->stream:Ljava/lang/Object;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_d

    .line 87
    iget-object p0, p0, Ljava/nio/FileChannelImpl;->stream:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 89
    :cond_d
    return-void
.end method

.method public final lock(JJZ)Ljava/nio/channels/FileLock;
    .registers 15
    .parameter "position"
    .parameter "size"
    .parameter "shared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->openCheck()V

    .line 133
    const/4 v8, 0x0

    .line 135
    .local v8, resultLock:Ljava/nio/channels/FileLock;
    const/4 v7, 0x0

    .line 137
    .local v7, completed:Z
    :try_start_5
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V

    .line 138
    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Ljava/nio/FileChannelImpl;->basicLock(JJZZ)Ljava/nio/channels/FileLock;
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    move-result-object v8

    .line 139
    const/4 v7, 0x1

    .line 141
    invoke-virtual {p0, v7}, Ljava/nio/FileChannelImpl;->end(Z)V

    .line 144
    return-object v8

    .line 141
    :catchall_16
    move-exception v0

    invoke-virtual {p0, v7}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v0
.end method

.method public abstract map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final mapImpl(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .registers 16
    .parameter "mapMode"
    .parameter "position"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    add-long v3, p2, p4

    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v8

    cmp-long v0, v3, v8

    if-lez v0, :cond_13

    .line 171
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v3, p0, Ljava/nio/FileChannelImpl;->handle:I

    add-long v4, p2, p4

    invoke-interface {v0, v3, v4, v5}, Lorg/apache/harmony/luni/platform/IFileSystem;->truncate(IJ)V

    .line 173
    :cond_13
    sget v0, Ljava/nio/FileChannelImpl;->ALLOC_GRANULARITY:I

    int-to-long v3, v0

    rem-long v3, p2, v3

    sub-long v1, p2, v3

    .line 174
    .local v1, alignment:J
    sub-long v3, p2, v1

    long-to-int v7, v3

    .line 175
    .local v7, offset:I
    iget v0, p0, Ljava/nio/FileChannelImpl;->handle:I

    int-to-long v3, v7

    add-long/2addr v3, p4

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Ljava/nio/MemoryBlock;->mmap(IJJLjava/nio/channels/FileChannel$MapMode;)Ljava/nio/MemoryBlock;

    move-result-object v6

    .line 176
    .local v6, block:Ljava/nio/MemoryBlock;
    new-instance v0, Ljava/nio/MappedByteBufferAdapter;

    long-to-int v3, p4

    invoke-direct {v0, v6, v3, v7, p1}, Ljava/nio/MappedByteBufferAdapter;-><init>(Ljava/nio/MemoryBlock;IILjava/nio/channels/FileChannel$MapMode;)V

    return-object v0
.end method

.method protected final openCheck()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 81
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 83
    :cond_c
    return-void
.end method

.method public position()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->openCheck()V

    .line 184
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v1, p0, Ljava/nio/FileChannelImpl;->handle:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/harmony/luni/platform/IFileSystem;->seek(IJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .registers 7
    .parameter "newPosition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->openCheck()V

    .line 192
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_11

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "New position must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_11
    iget-object v0, p0, Ljava/nio/FileChannelImpl;->repositioningLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_14
    sget-object v1, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v2, p0, Ljava/nio/FileChannelImpl;->handle:I

    const/4 v3, 0x1

    invoke-interface {v1, v2, p1, p2, v3}, Lorg/apache/harmony/luni/platform/IFileSystem;->seek(IJI)J

    .line 198
    monitor-exit v0

    .line 199
    return-object p0

    .line 198
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 13
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 225
    invoke-static {p1}, Ljava/nio/FileChannelImpl;->checkWritable(Ljava/nio/ByteBuffer;)V

    .line 226
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->openCheck()V

    .line 227
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_10

    move v3, v9

    .line 264
    :goto_f
    return v3

    .line 230
    :cond_10
    const/4 v2, 0x0

    .line 231
    .local v2, completed:Z
    const/4 v1, 0x0

    .line 232
    .local v1, bytesRead:I
    iget-object v3, p0, Ljava/nio/FileChannelImpl;->repositioningLock:Ljava/lang/Object;

    monitor-enter v3

    .line 233
    :try_start_15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_55

    move-result v4

    if-eqz v4, :cond_5a

    .line 235
    :try_start_1b
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V

    .line 239
    invoke-static {p1}, Ljava/nio/NioUtils;->getDirectBufferAddress(Ljava/nio/Buffer;)I

    move-result v0

    .line 240
    .local v0, address:I
    sget-object v4, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v5, p0, Ljava/nio/FileChannelImpl;->handle:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-interface {v4, v5, v0, v6, v7}, Lorg/apache/harmony/luni/platform/IFileSystem;->readDirect(IIII)J
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_4b

    move-result-wide v4

    long-to-int v1, v4

    .line 242
    const/4 v2, 0x1

    .line 244
    if-eqz v2, :cond_49

    if-ltz v1, :cond_49

    move v4, v10

    :goto_39
    :try_start_39
    invoke-virtual {p0, v4}, Ljava/nio/FileChannelImpl;->end(Z)V

    .line 260
    .end local v0           #address:I
    :goto_3c
    if-lez v1, :cond_46

    .line 261
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 263
    :cond_46
    monitor-exit v3

    move v3, v1

    .line 264
    goto :goto_f

    .restart local v0       #address:I
    :cond_49
    move v4, v9

    .line 244
    goto :goto_39

    .end local v0           #address:I
    :catchall_4b
    move-exception v4

    if-eqz v2, :cond_58

    if-ltz v1, :cond_58

    move v5, v10

    :goto_51
    invoke-virtual {p0, v5}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v4

    .line 263
    :catchall_55
    move-exception v4

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_39 .. :try_end_57} :catchall_55

    throw v4

    :cond_58
    move v5, v9

    .line 244
    goto :goto_51

    .line 248
    :cond_5a
    :try_start_5a
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V

    .line 252
    sget-object v4, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v5, p0, Ljava/nio/FileChannelImpl;->handle:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/apache/harmony/luni/platform/IFileSystem;->read(I[BII)J
    :try_end_75
    .catchall {:try_start_5a .. :try_end_75} :catchall_83

    move-result-wide v4

    long-to-int v1, v4

    .line 255
    const/4 v2, 0x1

    .line 257
    if-eqz v2, :cond_81

    if-ltz v1, :cond_81

    move v4, v10

    :goto_7d
    :try_start_7d
    invoke-virtual {p0, v4}, Ljava/nio/FileChannelImpl;->end(Z)V

    goto :goto_3c

    :cond_81
    move v4, v9

    goto :goto_7d

    :catchall_83
    move-exception v4

    if-eqz v2, :cond_8d

    if-ltz v1, :cond_8d

    move v5, v10

    :goto_89
    invoke-virtual {p0, v5}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v4
    :try_end_8d
    .catchall {:try_start_7d .. :try_end_8d} :catchall_55

    :cond_8d
    move v5, v9

    goto :goto_89
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .registers 9
    .parameter "buffer"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {p1}, Ljava/nio/FileChannelImpl;->checkWritable(Ljava/nio/ByteBuffer;)V

    .line 204
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gez v3, :cond_f

    .line 205
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 207
    :cond_f
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->openCheck()V

    .line 208
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 209
    const/4 v3, 0x0

    .line 220
    :goto_19
    return v3

    .line 211
    :cond_1a
    iget-object v3, p0, Ljava/nio/FileChannelImpl;->repositioningLock:Ljava/lang/Object;

    monitor-enter v3

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, bytesRead:I
    :try_start_1e
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->position()J

    move-result-wide v1

    .line 214
    .local v1, preReadPosition:J
    invoke-virtual {p0, p2, p3}, Ljava/nio/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_34

    .line 216
    :try_start_25
    invoke-virtual {p0, p1}, Ljava/nio/FileChannelImpl;->read(Ljava/nio/ByteBuffer;)I
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2f

    move-result v0

    .line 218
    :try_start_29
    invoke-virtual {p0, v1, v2}, Ljava/nio/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    .line 220
    monitor-exit v3

    move v3, v0

    goto :goto_19

    .line 218
    :catchall_2f
    move-exception v4

    invoke-virtual {p0, v1, v2}, Ljava/nio/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    throw v4

    .line 221
    .end local v1           #preReadPosition:J
    :catchall_34
    move-exception v4

    monitor-exit v3
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw v4
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .registers 26
    .parameter "buffers"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    move v0, v4

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 269
    invoke-virtual/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->openCheck()V

    .line 270
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v4

    invoke-static {v0, v1, v2, v3}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v17

    .line 271
    .local v17, count:I
    if-nez v17, :cond_20

    .line 272
    const-wide/16 v4, 0x0

    .line 335
    :goto_1f
    return-wide v4

    .line 274
    :cond_20
    move/from16 v0, p3

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    .line 275
    .local v18, directBuffers:[Ljava/nio/ByteBuffer;
    move/from16 v0, p3

    new-array v0, v0, [I

    move-object v6, v0

    .line 276
    .local v6, handles:[I
    move/from16 v0, p3

    new-array v0, v0, [I

    move-object v7, v0

    .line 277
    .local v7, offsets:[I
    move/from16 v0, p3

    new-array v0, v0, [I

    move-object v8, v0

    .line 278
    .local v8, lengths:[I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_37
    move/from16 v0, v20

    move/from16 v1, p3

    if-ge v0, v1, :cond_6a

    .line 279
    add-int v4, v20, p2

    aget-object v11, p1, v4

    .line 280
    .local v11, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_63

    .line 281
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 282
    aput-object v11, v18, v20

    .line 283
    const/4 v4, 0x0

    aput v4, v7, v20

    .line 287
    :goto_54
    invoke-static {v11}, Ljava/nio/NioUtils;->getDirectBufferAddress(Ljava/nio/Buffer;)I

    move-result v4

    aput v4, v6, v20

    .line 288
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    aput v4, v8, v20

    .line 278
    add-int/lit8 v20, v20, 0x1

    goto :goto_37

    .line 285
    :cond_63
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    aput v4, v7, v20

    goto :goto_54

    .line 290
    .end local v11           #buffer:Ljava/nio/ByteBuffer;
    :cond_6a
    const-wide/16 v12, 0x0

    .line 292
    .local v12, bytesRead:J
    const/16 v16, 0x0

    .line 294
    .local v16, completed:Z
    :try_start_6e
    invoke-virtual/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->begin()V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/FileChannelImpl;->repositioningLock:Ljava/lang/Object;

    move-object v10, v0

    monitor-enter v10
    :try_end_77
    .catchall {:try_start_6e .. :try_end_77} :catchall_c6

    .line 296
    :try_start_77
    sget-object v4, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    move-object/from16 v0, p0

    iget v0, v0, Ljava/nio/FileChannelImpl;->handle:I

    move v5, v0

    move/from16 v9, p3

    invoke-interface/range {v4 .. v9}, Lorg/apache/harmony/luni/platform/IFileSystem;->readv(I[I[I[II)J

    move-result-wide v12

    .line 299
    monitor-exit v10
    :try_end_85
    .catchall {:try_start_77 .. :try_end_85} :catchall_c3

    .line 300
    const/16 v16, 0x1

    .line 305
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    .line 308
    add-int v19, p2, p3

    .line 309
    .local v19, end:I
    move-wide v14, v12

    .line 310
    .local v14, bytesRemaining:J
    move/from16 v20, p2

    :goto_93
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_db

    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-lez v4, :cond_db

    .line 311
    aget-object v4, p1, v20

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_de

    .line 312
    aget v4, v8, v20

    int-to-long v4, v4

    cmp-long v4, v4, v14

    if-gez v4, :cond_cf

    .line 313
    aget-object v4, p1, v20

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v21

    .line 314
    .local v21, pos:I
    aget-object v4, p1, v20

    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 315
    aget v4, v8, v20

    int-to-long v4, v4

    sub-long/2addr v14, v4

    .line 310
    .end local v21           #pos:I
    :goto_c0
    add-int/lit8 v20, v20, 0x1

    goto :goto_93

    .line 299
    .end local v14           #bytesRemaining:J
    .end local v19           #end:I
    :catchall_c3
    move-exception v4

    :try_start_c4
    monitor-exit v10
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    :try_start_c5
    throw v4
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c6

    .line 305
    :catchall_c6
    move-exception v4

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v4

    .line 317
    .restart local v14       #bytesRemaining:J
    .restart local v19       #end:I
    :cond_cf
    move-wide v0, v14

    long-to-int v0, v0

    move/from16 v21, v0

    .line 318
    .restart local v21       #pos:I
    aget-object v4, p1, v20

    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .end local v21           #pos:I
    :cond_db
    move-wide v4, v12

    .line 335
    goto/16 :goto_1f

    .line 322
    :cond_de
    sub-int v4, v20, p2

    aget-object v10, v18, v4

    .line 323
    .local v10, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v14, v4

    if-gez v4, :cond_ff

    .line 325
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->position()I

    move-result v21

    .line 326
    .restart local v21       #pos:I
    aget-object v4, p1, v20

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 327
    aget-object v4, p1, v20

    long-to-int v5, v14

    add-int v5, v5, v21

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 328
    const-wide/16 v14, 0x0

    .line 329
    goto :goto_c0

    .line 330
    .end local v21           #pos:I
    :cond_ff
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v14, v4

    .line 331
    aget-object v4, p1, v20

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_c0
.end method

.method release(Ljava/nio/channels/FileLock;)V
    .registers 8
    .parameter "lock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->openCheck()V

    .line 158
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v1, p0, Ljava/nio/FileChannelImpl;->handle:I

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/IFileSystem;->unlock(IJJ)V

    .line 159
    invoke-direct {p0, p1}, Ljava/nio/FileChannelImpl;->removeLock(Ljava/nio/channels/FileLock;)V

    .line 160
    return-void
.end method

.method public size()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->openCheck()V

    .line 343
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v1, p0, Ljava/nio/FileChannelImpl;->handle:I

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/IFileSystem;->length(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .registers 16
    .parameter "src"
    .parameter "position"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->openCheck()V

    .line 349
    invoke-interface {p1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_f

    .line 350
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v2

    .line 352
    :cond_f
    const-wide/16 v5, 0x0

    cmp-long v2, p2, v5

    if-ltz v2, :cond_22

    const-wide/16 v5, 0x0

    cmp-long v2, p4, v5

    if-ltz v2, :cond_22

    const-wide/32 v5, 0x7fffffff

    cmp-long v2, p4, v5

    if-lez v2, :cond_28

    .line 353
    :cond_22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 355
    :cond_28
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v5

    cmp-long v2, p2, v5

    if-lez v2, :cond_33

    .line 356
    const-wide/16 v5, 0x0

    .line 376
    :goto_32
    return-wide v5

    .line 359
    :cond_33
    const/4 v7, 0x0

    .line 362
    .local v7, buffer:Ljava/nio/ByteBuffer;
    :try_start_34
    instance-of v2, p1, Ljava/nio/channels/FileChannel;

    if-eqz v2, :cond_5f

    .line 363
    move-object v0, p1

    check-cast v0, Ljava/nio/channels/FileChannel;

    move-object v1, v0

    .line 364
    .local v1, fileSrc:Ljava/nio/channels/FileChannel;
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    .line 365
    .local v8, size:J
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v3

    .line 366
    .local v3, filePosition:J
    sub-long v5, v8, v3

    invoke-static {p4, p5, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    .line 367
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v7

    .line 368
    add-long v5, v3, p4

    invoke-virtual {v1, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 374
    .end local v1           #fileSrc:Ljava/nio/channels/FileChannel;
    .end local v3           #filePosition:J
    .end local v8           #size:J
    :goto_56
    invoke-virtual {p0, v7, p2, p3}, Ljava/nio/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_59
    .catchall {:try_start_34 .. :try_end_59} :catchall_6b

    move-result v2

    int-to-long v5, v2

    .line 376
    invoke-static {v7}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_32

    .line 370
    :cond_5f
    long-to-int v2, p4

    :try_start_60
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 371
    invoke-interface {p1, v7}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 372
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_6a
    .catchall {:try_start_60 .. :try_end_6a} :catchall_6b

    goto :goto_56

    .line 376
    :catchall_6b
    move-exception v2

    invoke-static {v7}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    throw v2
.end method

.method public transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .registers 14
    .parameter "position"
    .parameter "count"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 382
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->openCheck()V

    .line 383
    invoke-interface {p5}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 384
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 386
    :cond_11
    instance-of v0, p5, Ljava/nio/ReadOnlyFileChannel;

    if-eqz v0, :cond_1b

    .line 387
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 389
    :cond_1b
    cmp-long v0, p1, v2

    if-ltz v0, :cond_23

    cmp-long v0, p3, v2

    if-gez v0, :cond_29

    .line 390
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 393
    :cond_29
    cmp-long v0, p3, v2

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_37

    :cond_35
    move-wide v0, v2

    .line 408
    .end local p5
    :goto_36
    return-wide v0

    .line 396
    .restart local p5
    :cond_37
    const/4 v7, 0x0

    .line 397
    .local v7, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 398
    instance-of v0, p5, Ljava/nio/SocketChannelImpl;

    if-eqz v0, :cond_55

    .line 400
    iget v1, p0, Ljava/nio/FileChannelImpl;->handle:I

    check-cast p5, Ljava/nio/SocketChannelImpl;

    .end local p5
    invoke-virtual {p5}, Ljava/nio/SocketChannelImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Ljava/nio/FileChannelImpl;->kernelTransfer(ILjava/io/FileDescriptor;JJ)J

    move-result-wide v0

    goto :goto_36

    .line 405
    .restart local p5
    :cond_55
    :try_start_55
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/FileChannelImpl;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v7

    .line 406
    invoke-interface {p5, v7}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_61
    .catchall {:try_start_55 .. :try_end_61} :catchall_67

    move-result v0

    int-to-long v0, v0

    .line 408
    invoke-static {v7}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_36

    :catchall_67
    move-exception v0

    invoke-static {v7}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    throw v0
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .registers 8
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->openCheck()V

    .line 427
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_f

    .line 428
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 430
    :cond_f
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_2e

    .line 431
    iget-object v2, p0, Ljava/nio/FileChannelImpl;->repositioningLock:Ljava/lang/Object;

    monitor-enter v2

    .line 432
    :try_start_1a
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->position()J

    move-result-wide v0

    .line 433
    .local v0, position:J
    sget-object v3, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v4, p0, Ljava/nio/FileChannelImpl;->handle:I

    invoke-interface {v3, v4, p1, p2}, Lorg/apache/harmony/luni/platform/IFileSystem;->truncate(IJ)V

    .line 440
    cmp-long v3, v0, p1

    if-lez v3, :cond_2f

    move-wide v3, p1

    :goto_2a
    invoke-virtual {p0, v3, v4}, Ljava/nio/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    .line 441
    monitor-exit v2

    .line 443
    .end local v0           #position:J
    :cond_2e
    return-object p0

    .restart local v0       #position:J
    :cond_2f
    move-wide v3, v0

    .line 440
    goto :goto_2a

    .line 441
    .end local v0           #position:J
    :catchall_31
    move-exception v3

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_1a .. :try_end_33} :catchall_31

    throw v3
.end method

.method public final tryLock(JJZ)Ljava/nio/channels/FileLock;
    .registers 13
    .parameter "position"
    .parameter "size"
    .parameter "shared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->openCheck()V

    .line 149
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Ljava/nio/FileChannelImpl;->basicLock(JJZZ)Ljava/nio/channels/FileLock;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 3
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->openCheck()V

    .line 472
    invoke-direct {p0, p1}, Ljava/nio/FileChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .registers 9
    .parameter "buffer"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    if-nez p1, :cond_8

    .line 448
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 450
    :cond_8
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gez v3, :cond_14

    .line 451
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 453
    :cond_14
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->openCheck()V

    .line 454
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 455
    const/4 v3, 0x0

    .line 467
    :goto_1e
    return v3

    .line 457
    :cond_1f
    const/4 v0, 0x0

    .line 458
    .local v0, bytesWritten:I
    iget-object v3, p0, Ljava/nio/FileChannelImpl;->repositioningLock:Ljava/lang/Object;

    monitor-enter v3

    .line 459
    :try_start_23
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->position()J

    move-result-wide v1

    .line 460
    .local v1, preWritePosition:J
    invoke-virtual {p0, p2, p3}, Ljava/nio/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_39

    .line 462
    :try_start_2a
    invoke-direct {p0, p1}, Ljava/nio/FileChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_34

    move-result v0

    .line 464
    :try_start_2e
    invoke-virtual {p0, v1, v2}, Ljava/nio/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    .line 466
    monitor-exit v3

    move v3, v0

    .line 467
    goto :goto_1e

    .line 464
    :catchall_34
    move-exception v4

    invoke-virtual {p0, v1, v2}, Ljava/nio/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    throw v4

    .line 466
    .end local v1           #preWritePosition:J
    :catchall_39
    move-exception v4

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_39

    throw v4
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .registers 28
    .parameter "buffers"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    move v0, v4

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 509
    invoke-virtual/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->openCheck()V

    .line 510
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v4

    invoke-static {v0, v1, v2, v3}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v18

    .line 511
    .local v18, count:I
    if-nez v18, :cond_20

    .line 512
    const-wide/16 v4, 0x0

    .line 567
    :goto_1f
    return-wide v4

    .line 514
    :cond_20
    move/from16 v0, p3

    new-array v0, v0, [I

    move-object v6, v0

    .line 515
    .local v6, handles:[I
    move/from16 v0, p3

    new-array v0, v0, [I

    move-object v7, v0

    .line 516
    .local v7, offsets:[I
    move/from16 v0, p3

    new-array v0, v0, [I

    move-object v8, v0

    .line 519
    .local v8, lengths:[I
    move/from16 v0, p3

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    move-object v10, v0

    .line 521
    .local v10, allocatedBufs:[Ljava/nio/ByteBuffer;
    const/16 v20, 0x0

    .local v20, i:I
    :goto_36
    move/from16 v0, v20

    move/from16 v1, p3

    if-ge v0, v1, :cond_77

    .line 522
    add-int v4, v20, p2

    aget-object v12, p1, v4

    .line 523
    .local v12, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_6d

    .line 524
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v19

    .line 525
    .local v19, directBuffer:Ljava/nio/ByteBuffer;
    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 526
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 527
    move-object/from16 v12, v19

    .line 528
    aput-object v19, v10, v20

    .line 529
    const/4 v4, 0x0

    aput v4, v7, v20

    .line 534
    .end local v19           #directBuffer:Ljava/nio/ByteBuffer;
    :goto_5e
    invoke-static {v12}, Ljava/nio/NioUtils;->getDirectBufferAddress(Ljava/nio/Buffer;)I

    move-result v4

    aput v4, v6, v20

    .line 535
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    aput v4, v8, v20

    .line 521
    add-int/lit8 v20, v20, 0x1

    goto :goto_36

    .line 531
    :cond_6d
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    aput v4, v7, v20

    .line 532
    const/4 v4, 0x0

    aput-object v4, v10, v20

    goto :goto_5e

    .line 539
    .end local v12           #buffer:Ljava/nio/ByteBuffer;
    :cond_77
    const-wide/16 v15, 0x0

    .line 540
    .local v15, bytesWritten:J
    const/16 v17, 0x0

    .line 541
    .local v17, completed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/FileChannelImpl;->repositioningLock:Ljava/lang/Object;

    move-object v13, v0

    monitor-enter v13

    .line 543
    :try_start_81
    invoke-virtual/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->begin()V

    .line 544
    sget-object v4, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    move-object/from16 v0, p0

    iget v0, v0, Ljava/nio/FileChannelImpl;->handle:I

    move v5, v0

    move/from16 v9, p3

    invoke-interface/range {v4 .. v9}, Lorg/apache/harmony/luni/platform/IFileSystem;->writev(I[I[I[II)J
    :try_end_90
    .catchall {:try_start_81 .. :try_end_90} :catchall_af

    move-result-wide v15

    .line 546
    const/16 v17, 0x1

    .line 548
    :try_start_93
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    .line 549
    move-object v11, v10

    .local v11, arr$:[Ljava/nio/ByteBuffer;
    move-object v0, v11

    array-length v0, v0

    move/from16 v22, v0

    .local v22, len$:I
    const/16 v21, 0x0

    .local v21, i$:I
    :goto_a1
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_d0

    aget-object v12, v11, v21

    .line 550
    .restart local v12       #buffer:Ljava/nio/ByteBuffer;
    invoke-static {v12}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 549
    add-int/lit8 v21, v21, 0x1

    goto :goto_a1

    .line 548
    .end local v11           #arr$:[Ljava/nio/ByteBuffer;
    .end local v12           #buffer:Ljava/nio/ByteBuffer;
    .end local v21           #i$:I
    .end local v22           #len$:I
    :catchall_af
    move-exception v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    .line 549
    move-object v11, v10

    .restart local v11       #arr$:[Ljava/nio/ByteBuffer;
    move-object v0, v11

    array-length v0, v0

    move/from16 v22, v0

    .restart local v22       #len$:I
    const/16 v21, 0x0

    .restart local v21       #i$:I
    :goto_be
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_cc

    aget-object v12, v11, v21

    .line 550
    .restart local v12       #buffer:Ljava/nio/ByteBuffer;
    invoke-static {v12}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 549
    add-int/lit8 v21, v21, 0x1

    goto :goto_be

    .end local v12           #buffer:Ljava/nio/ByteBuffer;
    :cond_cc
    throw v4

    .line 553
    .end local v11           #arr$:[Ljava/nio/ByteBuffer;
    .end local v21           #i$:I
    .end local v22           #len$:I
    :catchall_cd
    move-exception v4

    monitor-exit v13
    :try_end_cf
    .catchall {:try_start_93 .. :try_end_cf} :catchall_cd

    throw v4

    .restart local v11       #arr$:[Ljava/nio/ByteBuffer;
    .restart local v21       #i$:I
    .restart local v22       #len$:I
    :cond_d0
    :try_start_d0
    monitor-exit v13
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cd

    .line 555
    move-wide v13, v15

    .line 556
    .local v13, bytesRemaining:J
    move/from16 v20, p2

    :goto_d4
    add-int v4, p3, p2

    move/from16 v0, v20

    move v1, v4

    if-ge v0, v1, :cond_110

    .line 557
    aget-object v4, p1, v20

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v13, v4

    if-lez v4, :cond_ff

    .line 558
    aget-object v4, p1, v20

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v23

    .line 559
    .local v23, pos:I
    aget-object v4, p1, v20

    move-object v0, v4

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 560
    aget-object v4, p1, v20

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v13, v4

    .line 556
    add-int/lit8 v20, v20, 0x1

    goto :goto_d4

    .line 562
    .end local v23           #pos:I
    :cond_ff
    aget-object v4, p1, v20

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    long-to-int v5, v13

    add-int v23, v4, v5

    .line 563
    .restart local v23       #pos:I
    aget-object v4, p1, v20

    move-object v0, v4

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .end local v23           #pos:I
    :cond_110
    move-wide v4, v15

    .line 567
    goto/16 :goto_1f
.end method
