.class final Ljava/nio/ReadOnlyDirectByteBuffer;
.super Ljava/nio/DirectByteBuffer;
.source "ReadOnlyDirectByteBuffer.java"


# direct methods
.method protected constructor <init>(Ljava/nio/MemoryBlock;II)V
    .registers 4
    .parameter "block"
    .parameter "capacity"
    .parameter "offset"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    .line 42
    return-void
.end method

.method static copy(Ljava/nio/DirectByteBuffer;I)Ljava/nio/ReadOnlyDirectByteBuffer;
    .registers 6
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 33
    new-instance v0, Ljava/nio/ReadOnlyDirectByteBuffer;

    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v2

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyDirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    .line 34
    .local v0, buf:Ljava/nio/ReadOnlyDirectByteBuffer;
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    iput v1, v0, Ljava/nio/ReadOnlyDirectByteBuffer;->limit:I

    .line 35
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadOnlyDirectByteBuffer;->position:I

    .line 36
    iput p1, v0, Ljava/nio/ReadOnlyDirectByteBuffer;->mark:I

    .line 37
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Ljava/nio/ReadOnlyDirectByteBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyDirectByteBuffer;->copy(Ljava/nio/DirectByteBuffer;I)Ljava/nio/ReadOnlyDirectByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 51
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Ljava/nio/ReadOnlyDirectByteBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyDirectByteBuffer;->copy(Ljava/nio/DirectByteBuffer;I)Ljava/nio/ReadOnlyDirectByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 66
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 71
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "buf"

    .prologue
    .line 131
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "src"
    .parameter "srcOffset"
    .parameter "byteCount"

    .prologue
    .line 76
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "value"

    .prologue
    .line 81
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 86
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 91
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 96
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 101
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 106
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 111
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "value"

    .prologue
    .line 116
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 121
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 126
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .registers 6

    .prologue
    .line 136
    new-instance v0, Ljava/nio/ReadOnlyDirectByteBuffer;

    iget-object v1, p0, Ljava/nio/ReadOnlyDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {p0}, Ljava/nio/ReadOnlyDirectByteBuffer;->remaining()I

    move-result v2

    iget v3, p0, Ljava/nio/ReadOnlyDirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/ReadOnlyDirectByteBuffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyDirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    return-object v0
.end method
