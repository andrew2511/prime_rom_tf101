.class abstract Ljava/nio/DirectByteBuffer;
.super Ljava/nio/BaseByteBuffer;
.source "DirectByteBuffer.java"


# instance fields
.field protected final offset:I


# direct methods
.method protected constructor <init>(Ljava/nio/MemoryBlock;II)V
    .registers 8
    .parameter "block"
    .parameter "capacity"
    .parameter "offset"

    .prologue
    .line 28
    invoke-direct {p0, p2, p1}, Ljava/nio/BaseByteBuffer;-><init>(ILjava/nio/MemoryBlock;)V

    .line 30
    invoke-virtual {p1}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v0

    .line 31
    .local v0, baseSize:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1c

    add-int v2, p2, p3

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_1c

    .line 32
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "capacity + offset > baseSize"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_1c
    iput p3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    .line 36
    invoke-virtual {p1}, Ljava/nio/MemoryBlock;->toInt()I

    move-result v2

    add-int/2addr v2, p3

    iput v2, p0, Ljava/nio/DirectByteBuffer;->effectiveDirectAddress:I

    .line 37
    return-void
.end method


# virtual methods
.method public final free()V
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v0}, Ljava/nio/MemoryBlock;->free()V

    .line 206
    return-void
.end method

.method public final get()B
    .registers 5

    .prologue
    .line 85
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 86
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 88
    :cond_c
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/MemoryBlock;->peekByte(I)B

    move-result v0

    return v0
.end method

.method public final get(I)B
    .registers 4
    .parameter "index"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->checkIndex(I)V

    .line 94
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/MemoryBlock;->peekByte(I)B

    move-result v0

    return v0
.end method

.method public final get([BII)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "byteCount"

    .prologue
    .line 41
    const/4 v0, 0x1

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

    .line 42
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/MemoryBlock;->peekByteArray(I[BII)V

    .line 43
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 44
    return-object p0
.end method

.method final get([CII)V
    .registers 11
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "charCount"

    .prologue
    .line 48
    const/4 v0, 0x2

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

    move-result v6

    .line 49
    .local v6, byteCount:I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekCharArray(I[CIIZ)V

    .line 50
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 51
    return-void
.end method

.method final get([DII)V
    .registers 11
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "doubleCount"

    .prologue
    .line 54
    const/16 v0, 0x8

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

    move-result v6

    .line 55
    .local v6, byteCount:I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekDoubleArray(I[DIIZ)V

    .line 56
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 57
    return-void
.end method

.method final get([FII)V
    .registers 11
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "floatCount"

    .prologue
    .line 60
    const/4 v0, 0x4

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

    move-result v6

    .line 61
    .local v6, byteCount:I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekFloatArray(I[FIIZ)V

    .line 62
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 63
    return-void
.end method

.method final get([III)V
    .registers 11
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "intCount"

    .prologue
    .line 66
    const/4 v0, 0x4

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

    move-result v6

    .line 67
    .local v6, byteCount:I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekIntArray(I[IIIZ)V

    .line 68
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 69
    return-void
.end method

.method final get([JII)V
    .registers 11
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "longCount"

    .prologue
    .line 72
    const/16 v0, 0x8

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

    move-result v6

    .line 73
    .local v6, byteCount:I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekLongArray(I[JIIZ)V

    .line 74
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 75
    return-void
.end method

.method final get([SII)V
    .registers 11
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "shortCount"

    .prologue
    .line 78
    const/4 v0, 0x2

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

    move-result v6

    .line 79
    .local v6, byteCount:I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekShortArray(I[SIIZ)V

    .line 80
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 81
    return-void
.end method

.method public final getChar()C
    .registers 6

    .prologue
    .line 99
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v2, 0x2

    .line 100
    .local v0, newPosition:I
    iget v2, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v2, :cond_e

    .line 101
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 103
    :cond_e
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3, v4}, Ljava/nio/MemoryBlock;->peekShort(ILjava/nio/ByteOrder;)S

    move-result v2

    int-to-char v1, v2

    .line 104
    .local v1, result:C
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 105
    return v1
.end method

.method public final getChar(I)C
    .registers 5
    .parameter "index"

    .prologue
    .line 110
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    .line 111
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekShort(ILjava/nio/ByteOrder;)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final getDouble()D
    .registers 7

    .prologue
    .line 116
    iget v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v3, 0x8

    .line 117
    .local v0, newPosition:I
    iget v3, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v3, :cond_e

    .line 118
    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    .line 120
    :cond_e
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v4, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v5, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v4, v5

    iget-object v5, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4, v5}, Ljava/nio/MemoryBlock;->peekLong(ILjava/nio/ByteOrder;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    .line 121
    .local v1, result:D
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 122
    return-wide v1
.end method

.method public final getDouble(I)D
    .registers 5
    .parameter "index"

    .prologue
    .line 127
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    .line 128
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekLong(ILjava/nio/ByteOrder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getFloat()F
    .registers 6

    .prologue
    .line 133
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v2, 0x4

    .line 134
    .local v0, newPosition:I
    iget v2, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v2, :cond_e

    .line 135
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 137
    :cond_e
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3, v4}, Ljava/nio/MemoryBlock;->peekInt(ILjava/nio/ByteOrder;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 138
    .local v1, result:F
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 139
    return v1
.end method

.method public final getFloat(I)F
    .registers 5
    .parameter "index"

    .prologue
    .line 144
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    .line 145
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekInt(ILjava/nio/ByteOrder;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final getInt()I
    .registers 6

    .prologue
    .line 150
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v2, 0x4

    .line 151
    .local v0, newPosition:I
    iget v2, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v2, :cond_e

    .line 152
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 154
    :cond_e
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3, v4}, Ljava/nio/MemoryBlock;->peekInt(ILjava/nio/ByteOrder;)I

    move-result v1

    .line 155
    .local v1, result:I
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 156
    return v1
.end method

.method public final getInt(I)I
    .registers 5
    .parameter "index"

    .prologue
    .line 161
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    .line 162
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekInt(ILjava/nio/ByteOrder;)I

    move-result v0

    return v0
.end method

.method public final getLong()J
    .registers 7

    .prologue
    .line 167
    iget v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v3, 0x8

    .line 168
    .local v0, newPosition:I
    iget v3, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v3, :cond_e

    .line 169
    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    .line 171
    :cond_e
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v4, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v5, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v4, v5

    iget-object v5, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4, v5}, Ljava/nio/MemoryBlock;->peekLong(ILjava/nio/ByteOrder;)J

    move-result-wide v1

    .line 172
    .local v1, result:J
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 173
    return-wide v1
.end method

.method public final getLong(I)J
    .registers 5
    .parameter "index"

    .prologue
    .line 178
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    .line 179
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekLong(ILjava/nio/ByteOrder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getShort()S
    .registers 6

    .prologue
    .line 184
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v2, 0x2

    .line 185
    .local v0, newPosition:I
    iget v2, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v2, :cond_e

    .line 186
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 188
    :cond_e
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3, v4}, Ljava/nio/MemoryBlock;->peekShort(ILjava/nio/ByteOrder;)S

    move-result v1

    .line 189
    .local v1, result:S
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 190
    return v1
.end method

.method public final getShort(I)S
    .registers 5
    .parameter "index"

    .prologue
    .line 195
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    .line 196
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekShort(ILjava/nio/ByteOrder;)S

    move-result v0

    return v0
.end method

.method public final isDirect()Z
    .registers 2

    .prologue
    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method protected final protectedArray()[B
    .registers 2

    .prologue
    .line 210
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final protectedArrayOffset()I
    .registers 2

    .prologue
    .line 215
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final protectedHasArray()Z
    .registers 2

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method
