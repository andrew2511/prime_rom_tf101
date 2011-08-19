.class public abstract Ljava/nio/MappedByteBuffer;
.super Ljava/nio/ByteBuffer;
.source "MappedByteBuffer.java"


# instance fields
.field private final mapMode:Ljava/nio/channels/FileChannel$MapMode;

.field final wrapped:Ljava/nio/DirectByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 4
    .parameter "directBuffer"

    .prologue
    .line 43
    iget v0, p1, Ljava/nio/ByteBuffer;->capacity:I

    iget-object v1, p1, Ljava/nio/ByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-direct {p0, v0, v1}, Ljava/nio/ByteBuffer;-><init>(ILjava/nio/MemoryBlock;)V

    .line 44
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_13

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 47
    :cond_13
    check-cast p1, Ljava/nio/DirectByteBuffer;

    .end local p1
    iput-object p1, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/MappedByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    .line 49
    return-void
.end method

.method constructor <init>(Ljava/nio/MemoryBlock;IILjava/nio/channels/FileChannel$MapMode;)V
    .registers 6
    .parameter "block"
    .parameter "capacity"
    .parameter "offset"
    .parameter "mapMode"

    .prologue
    .line 52
    invoke-direct {p0, p2, p1}, Ljava/nio/ByteBuffer;-><init>(ILjava/nio/MemoryBlock;)V

    .line 53
    iput-object p4, p0, Ljava/nio/MappedByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    .line 54
    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    if-ne p4, v0, :cond_11

    .line 55
    new-instance v0, Ljava/nio/ReadOnlyDirectByteBuffer;

    invoke-direct {v0, p1, p2, p3}, Ljava/nio/ReadOnlyDirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    iput-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    .line 59
    :goto_10
    return-void

    .line 57
    :cond_11
    new-instance v0, Ljava/nio/ReadWriteDirectByteBuffer;

    invoke-direct {v0, p1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    iput-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    goto :goto_10
.end method


# virtual methods
.method public final force()Ljava/nio/MappedByteBuffer;
    .registers 4

    .prologue
    .line 93
    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    if-ne v0, v1, :cond_15

    .line 94
    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v0}, Ljava/nio/MemoryBlock;->toInt()I

    move-result v0

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->msync(IJ)V

    .line 96
    :cond_15
    return-object p0
.end method

.method public final isLoaded()Z
    .registers 4

    .prologue
    .line 70
    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v0}, Ljava/nio/MemoryBlock;->toInt()I

    move-result v0

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->isLoaded(IJ)Z

    move-result v0

    return v0
.end method

.method public final load()Ljava/nio/MappedByteBuffer;
    .registers 4

    .prologue
    .line 80
    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v0}, Ljava/nio/MemoryBlock;->toInt()I

    move-result v0

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->load(IJ)V

    .line 81
    return-object p0
.end method
