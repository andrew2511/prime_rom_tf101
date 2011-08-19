.class final Ljava/nio/ReadWriteHeapByteBuffer;
.super Ljava/nio/HeapByteBuffer;
.source "ReadWriteHeapByteBuffer.java"


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "capacity"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;-><init>(I)V

    .line 50
    return-void
.end method

.method constructor <init>([B)V
    .registers 2
    .parameter "backingArray"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;-><init>([B)V

    .line 46
    return-void
.end method

.method constructor <init>([BII)V
    .registers 4
    .parameter "backingArray"
    .parameter "capacity"
    .parameter "arrayOffset"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/HeapByteBuffer;-><init>([BII)V

    .line 54
    return-void
.end method

.method static copy(Ljava/nio/HeapByteBuffer;I)Ljava/nio/ReadWriteHeapByteBuffer;
    .registers 6
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 36
    new-instance v0, Ljava/nio/ReadWriteHeapByteBuffer;

    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->capacity()I

    move-result v2

    iget v3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteHeapByteBuffer;-><init>([BII)V

    .line 38
    .local v0, buf:Ljava/nio/ReadWriteHeapByteBuffer;
    iget v1, p0, Ljava/nio/HeapByteBuffer;->limit:I

    iput v1, v0, Ljava/nio/ReadWriteHeapByteBuffer;->limit:I

    .line 39
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    .line 40
    iput p1, v0, Ljava/nio/ReadWriteHeapByteBuffer;->mark:I

    .line 41
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyHeapByteBuffer;->copy(Ljava/nio/HeapByteBuffer;I)Ljava/nio/ReadOnlyHeapByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .registers 6

    .prologue
    .line 63
    iget-object v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    iget v2, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/ReadWriteHeapByteBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iget v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->limit:I

    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    .line 65
    iget v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->capacity:I

    iput v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->limit:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->mark:I

    .line 67
    return-object p0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->copy(Ljava/nio/HeapByteBuffer;I)Ljava/nio/ReadWriteHeapByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method protected protectedArray()[B
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    return-object v0
.end method

.method protected protectedArrayOffset()I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    return v0
.end method

.method protected protectedHasArray()Z
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "b"

    .prologue
    .line 97
    iget v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 98
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 100
    :cond_c
    iget-object v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v1, v2

    aput-byte p1, v0, v1

    .line 101
    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "index"
    .parameter "b"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Ljava/nio/ReadWriteHeapByteBuffer;->checkIndex(I)V

    .line 107
    iget-object v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    aput-byte p2, v0, v1

    .line 108
    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "byteCount"

    .prologue
    .line 113
    const/4 v0, 0x1

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->checkPutBounds(IIII)I

    .line 114
    iget-object v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    .line 116
    return-object p0
.end method

.method final put([CII)V
    .registers 11
    .parameter "src"
    .parameter "srcOffset"
    .parameter "charCount"

    .prologue
    const/4 v5, 0x2

    .line 120
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->checkPutBounds(IIII)I

    move-result v2

    .line 121
    .local v2, byteCount:I
    iget-object v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/OSMemory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 122
    iget v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    .line 123
    return-void
.end method

.method final put([DII)V
    .registers 11
    .parameter "src"
    .parameter "srcOffset"
    .parameter "doubleCount"

    .prologue
    const/16 v5, 0x8

    .line 126
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->checkPutBounds(IIII)I

    move-result v2

    .line 127
    .local v2, byteCount:I
    iget-object v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/OSMemory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 128
    iget v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    .line 129
    return-void
.end method

.method final put([FII)V
    .registers 11
    .parameter "src"
    .parameter "srcOffset"
    .parameter "floatCount"

    .prologue
    const/4 v5, 0x4

    .line 132
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->checkPutBounds(IIII)I

    move-result v2

    .line 133
    .local v2, byteCount:I
    iget-object v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/OSMemory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 134
    iget v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    .line 135
    return-void
.end method

.method final put([III)V
    .registers 11
    .parameter "src"
    .parameter "srcOffset"
    .parameter "intCount"

    .prologue
    const/4 v5, 0x4

    .line 138
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->checkPutBounds(IIII)I

    move-result v2

    .line 139
    .local v2, byteCount:I
    iget-object v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/OSMemory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 140
    iget v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    .line 141
    return-void
.end method

.method final put([JII)V
    .registers 11
    .parameter "src"
    .parameter "srcOffset"
    .parameter "longCount"

    .prologue
    const/16 v5, 0x8

    .line 144
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->checkPutBounds(IIII)I

    move-result v2

    .line 145
    .local v2, byteCount:I
    iget-object v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/OSMemory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 146
    iget v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    .line 147
    return-void
.end method

.method final put([SII)V
    .registers 11
    .parameter "src"
    .parameter "srcOffset"
    .parameter "shortCount"

    .prologue
    const/4 v5, 0x2

    .line 150
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->checkPutBounds(IIII)I

    move-result v2

    .line 151
    .local v2, byteCount:I
    iget-object v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/OSMemory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 152
    iget v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    .line 153
    return-void
.end method

.method public putChar(C)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "value"

    .prologue
    .line 164
    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x2

    .line 165
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 166
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 168
    :cond_e
    iget-object v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v2, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v2, v3

    int-to-short v3, p1

    iget-object v4, p0, Ljava/nio/ReadWriteHeapByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, v3, v4}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 169
    iput v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    .line 170
    return-object p0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "index"
    .parameter "value"

    .prologue
    .line 157
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->checkIndex(II)V

    .line 158
    iget-object v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    int-to-short v2, p2

    iget-object v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 159
    return-object p0
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "value"

    .prologue
    .line 175
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/nio/ReadWriteHeapByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 180
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ReadWriteHeapByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 185
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 190
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "value"

    .prologue
    .line 195
    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x4

    .line 196
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 197
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 199
    :cond_e
    iget-object v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v2, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, p1, v3}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 200
    iput v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    .line 201
    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 206
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->checkIndex(II)V

    .line 207
    iget-object v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ReadWriteHeapByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, p2, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 208
    return-object p0
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "index"
    .parameter "value"

    .prologue
    .line 213
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->checkIndex(II)V

    .line 214
    iget-object v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ReadWriteHeapByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, p2, p3, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    .line 215
    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "value"

    .prologue
    .line 220
    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x8

    .line 221
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 222
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 224
    :cond_e
    iget-object v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v2, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, p1, p2, v3}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    .line 225
    iput v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    .line 226
    return-object p0
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 231
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ReadWriteHeapByteBuffer;->checkIndex(II)V

    .line 232
    iget-object v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ReadWriteHeapByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, p2, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 233
    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "value"

    .prologue
    .line 238
    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x2

    .line 239
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->limit:I

    if-le v0, v1, :cond_e

    .line 240
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 242
    :cond_e
    iget-object v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    iget v2, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, p1, v3}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 243
    iput v0, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    .line 244
    return-object p0
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .registers 6

    .prologue
    .line 249
    new-instance v0, Ljava/nio/ReadWriteHeapByteBuffer;

    iget-object v1, p0, Ljava/nio/ReadWriteHeapByteBuffer;->backingArray:[B

    invoke-virtual {p0}, Ljava/nio/ReadWriteHeapByteBuffer;->remaining()I

    move-result v2

    iget v3, p0, Ljava/nio/ReadWriteHeapByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteHeapByteBuffer;-><init>([BII)V

    return-object v0
.end method
