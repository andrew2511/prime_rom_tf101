.class public final Llibcore/io/MemoryMappedFile;
.super Ljava/lang/Object;
.source "MemoryMappedFile.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private address:I

.field private final size:I


# direct methods
.method private constructor <init>(II)V
    .registers 3
    .parameter "address"
    .parameter "size"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Llibcore/io/MemoryMappedFile;->address:I

    .line 40
    iput p2, p0, Llibcore/io/MemoryMappedFile;->size:I

    .line 41
    return-void
.end method

.method private static mmap(ILjava/nio/channels/FileChannel$MapMode;JJ)Llibcore/io/MemoryMappedFile;
    .registers 13
    .parameter "fd"
    .parameter "mapMode"
    .parameter "start"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 52
    cmp-long v0, p2, v1

    if-gez v0, :cond_1f

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1f
    cmp-long v0, p4, v1

    if-gtz v0, :cond_3c

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_3c
    add-long v0, p2, p4

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_4d

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(start + size) > Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    move v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-object v5, p1

    .line 61
    invoke-static/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/OSMemory;->mmap(IJJLjava/nio/channels/FileChannel$MapMode;)I

    move-result v6

    .line 62
    .local v6, address:I
    new-instance v0, Llibcore/io/MemoryMappedFile;

    long-to-int v1, p4

    invoke-direct {v0, v6, v1}, Llibcore/io/MemoryMappedFile;-><init>(II)V

    return-object v0
.end method

.method public static mmap(Ljava/io/FileDescriptor;Ljava/nio/channels/FileChannel$MapMode;JJ)Llibcore/io/MemoryMappedFile;
    .registers 12
    .parameter "fd"
    .parameter "mapMode"
    .parameter "start"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Llibcore/io/IoUtils;->getFd(Ljava/io/FileDescriptor;)I

    move-result v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Llibcore/io/MemoryMappedFile;->mmap(ILjava/nio/channels/FileChannel$MapMode;JJ)Llibcore/io/MemoryMappedFile;

    move-result-object v0

    return-object v0
.end method

.method public static mmap(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel$MapMode;JJ)Llibcore/io/MemoryMappedFile;
    .registers 12
    .parameter "fc"
    .parameter "mapMode"
    .parameter "start"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p0}, Ljava/nio/NioUtils;->getFd(Ljava/nio/channels/FileChannel;)I

    move-result v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Llibcore/io/MemoryMappedFile;->mmap(ILjava/nio/channels/FileChannel$MapMode;JJ)Llibcore/io/MemoryMappedFile;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bigEndianIterator()Llibcore/io/BufferIterator;
    .registers 6

    .prologue
    .line 84
    new-instance v0, Llibcore/io/NioBufferIterator;

    iget v1, p0, Llibcore/io/MemoryMappedFile;->address:I

    iget v2, p0, Llibcore/io/MemoryMappedFile;->size:I

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v3, v4, :cond_13

    const/4 v3, 0x1

    :goto_f
    invoke-direct {v0, v1, v2, v3}, Llibcore/io/NioBufferIterator;-><init>(IIZ)V

    return-object v0

    :cond_13
    const/4 v3, 0x0

    goto :goto_f
.end method

.method public declared-synchronized close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    iget v0, p0, Llibcore/io/MemoryMappedFile;->address:I

    if-eqz v0, :cond_10

    .line 75
    iget v0, p0, Llibcore/io/MemoryMappedFile;->address:I

    iget v1, p0, Llibcore/io/MemoryMappedFile;->size:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->munmap(IJ)V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Llibcore/io/MemoryMappedFile;->address:I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 78
    :cond_10
    monitor-exit p0

    return-void

    .line 74
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public littleEndianIterator()Llibcore/io/BufferIterator;
    .registers 6

    .prologue
    .line 91
    new-instance v0, Llibcore/io/NioBufferIterator;

    iget v1, p0, Llibcore/io/MemoryMappedFile;->address:I

    iget v2, p0, Llibcore/io/MemoryMappedFile;->size:I

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v3, v4, :cond_13

    const/4 v3, 0x1

    :goto_f
    invoke-direct {v0, v1, v2, v3}, Llibcore/io/NioBufferIterator;-><init>(IIZ)V

    return-object v0

    :cond_13
    const/4 v3, 0x0

    goto :goto_f
.end method

.method public size()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Llibcore/io/MemoryMappedFile;->size:I

    return v0
.end method
