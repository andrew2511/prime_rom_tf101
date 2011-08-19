.class final Ljava/nio/ReadWriteDirectByteBuffer;
.super Ljava/nio/DirectByteBuffer;
.source "ReadWriteDirectByteBuffer.java"


# direct methods
.method constructor <init>(I)V
    .registers 4
    .parameter "capacity"

    .prologue
    .line 46
    invoke-static {p1}, Ljava/nio/MemoryBlock;->allocate(I)Ljava/nio/MemoryBlock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    .line 47
    return-void
.end method

.method constructor <init>(II)V
    .registers 5
    .parameter "address"
    .parameter "capacity"

    .prologue
    .line 51
    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Ljava/nio/MemoryBlock;->wrapFromJni(IJ)Ljava/nio/MemoryBlock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    .line 52
    return-void
.end method

.method constructor <init>(Ljava/nio/MemoryBlock;II)V
    .registers 4
    .parameter "block"
    .parameter "capacity"
    .parameter "offset"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    .line 56
    return-void
.end method

.method static copy(Ljava/nio/DirectByteBuffer;I)Ljava/nio/ReadWriteDirectByteBuffer;
    .registers 6
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 36
    new-instance v0, Ljava/nio/ReadWriteDirectByteBuffer;

    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v2

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteDirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    .line 38
    .local v0, buf:Ljava/nio/ReadWriteDirectByteBuffer;
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    iput v1, v0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    .line 39
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 40
    iput p1, v0, Ljava/nio/ReadWriteDirectByteBuffer;->mark:I

    .line 41
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyDirectByteBuffer;->copy(Ljava/nio/DirectByteBuffer;I)Ljava/nio/ReadOnlyDirectByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .registers 5

    .prologue
    .line 65
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->effectiveDirectAddress:I

    .line 66
    .local v0, addr:I
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v1, v0

    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/harmony/luni/platform/OSMemory;->memmove(IIJ)V

    .line 67
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 68
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->capacity:I

    iput v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    .line 69
    const/4 v1, -0x1

    iput v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->mark:I

    .line 70
    return-object p0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->copy(Ljava/nio/DirectByteBuffer;I)Ljava/nio/ReadWriteDirectByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "value"

    .prologue
    .line 85
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 86
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 88
    :cond_c
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Ljava/nio/MemoryBlock;->pokeByte(IB)V

    .line 89
    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Ljava/nio/ReadWriteDirectByteBuffer;->checkIndex(I)V

    .line 95
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/nio/MemoryBlock;->pokeByte(IB)V

    .line 96
    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "byteCount"

    .prologue
    .line 101
    const/4 v0, 0x1

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->checkPutBounds(IIII)I

    .line 102
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/MemoryBlock;->pokeByteArray(I[BII)V

    .line 103
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 104
    return-object p0
.end method

.method final put([CII)V
    .registers 11
    .parameter "src"
    .parameter "srcOffset"
    .parameter "charCount"

    .prologue
    .line 108
    const/4 v0, 0x2

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    .line 109
    .local v6, byteCount:I
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeCharArray(I[CIIZ)V

    .line 110
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 111
    return-void
.end method

.method final put([DII)V
    .registers 11
    .parameter "src"
    .parameter "srcOffset"
    .parameter "doubleCount"

    .prologue
    .line 114
    const/16 v0, 0x8

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    .line 115
    .local v6, byteCount:I
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeDoubleArray(I[DIIZ)V

    .line 116
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 117
    return-void
.end method

.method final put([FII)V
    .registers 11
    .parameter "src"
    .parameter "srcOffset"
    .parameter "floatCount"

    .prologue
    .line 120
    const/4 v0, 0x4

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    .line 121
    .local v6, byteCount:I
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeFloatArray(I[FIIZ)V

    .line 122
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 123
    return-void
.end method

.method final put([III)V
    .registers 11
    .parameter "src"
    .parameter "srcOffset"
    .parameter "intCount"

    .prologue
    .line 126
    const/4 v0, 0x4

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    .line 127
    .local v6, byteCount:I
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeIntArray(I[IIIZ)V

    .line 128
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 129
    return-void
.end method

.method final put([JII)V
    .registers 11
    .parameter "src"
    .parameter "srcOffset"
    .parameter "longCount"

    .prologue
    .line 132
    const/16 v0, 0x8

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    .line 133
    .local v6, byteCount:I
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeLongArray(I[JIIZ)V

    .line 134
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 135
    return-void
.end method

.method final put([SII)V
    .registers 11
    .parameter "src"
    .parameter "srcOffset"
    .parameter "shortCount"

    .prologue
    .line 138
    const/4 v0, 0x2

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    .line 139
    .local v6, byteCount:I
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeShortArray(I[SIIZ)V

    .line 140
    iget v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 141
    return-void
.end method

.method public putChar(C)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "value"

    .prologue
    .line 145
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x2

    .line 146
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 147
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 149
    :cond_e
    iget-object v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v2, v3

    int-to-short v3, p1

    iget-object v4, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    .line 150
    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 151
    return-object p0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "index"
    .parameter "value"

    .prologue
    .line 156
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->checkIndex(II)V

    .line 157
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    int-to-short v2, p2

    iget-object v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    .line 158
    return-object p0
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .registers 9
    .parameter "value"

    .prologue
    .line 163
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x8

    .line 164
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 165
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 167
    :cond_e
    iget-object v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v2, v3

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    iget-object v5, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    .line 168
    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 169
    return-object p0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .registers 9
    .parameter "index"
    .parameter "value"

    .prologue
    .line 174
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->checkIndex(II)V

    .line 175
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    iget-object v4, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    .line 176
    return-object p0
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "value"

    .prologue
    .line 181
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x4

    .line 182
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 183
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 185
    :cond_e
    iget-object v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v2, v3

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    iget-object v4, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    .line 186
    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 187
    return-object p0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "index"
    .parameter "value"

    .prologue
    .line 192
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->checkIndex(II)V

    .line 193
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    iget-object v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    .line 194
    return-object p0
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "value"

    .prologue
    .line 199
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x4

    .line 200
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 201
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 203
    :cond_e
    iget-object v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, p1, v3}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    .line 204
    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 205
    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 210
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->checkIndex(II)V

    .line 211
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, p2, v2}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    .line 212
    return-object p0
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "index"
    .parameter "value"

    .prologue
    .line 228
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->checkIndex(II)V

    .line 229
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, p2, p3, v2}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    .line 230
    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "value"

    .prologue
    .line 217
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x8

    .line 218
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 219
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 221
    :cond_e
    iget-object v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, p1, p2, v3}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    .line 222
    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 223
    return-object p0
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 246
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->checkIndex(II)V

    .line 247
    iget-object v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, p2, v2}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    .line 248
    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "value"

    .prologue
    .line 235
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x2

    .line 236
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 237
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 239
    :cond_e
    iget-object v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, p1, v3}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    .line 240
    iput v0, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    .line 241
    return-object p0
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .registers 6

    .prologue
    .line 253
    new-instance v0, Ljava/nio/ReadWriteDirectByteBuffer;

    iget-object v1, p0, Ljava/nio/ReadWriteDirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {p0}, Ljava/nio/ReadWriteDirectByteBuffer;->remaining()I

    move-result v2

    iget v3, p0, Ljava/nio/ReadWriteDirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/ReadWriteDirectByteBuffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteDirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    return-object v0
.end method
