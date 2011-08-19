.class abstract Ljava/nio/HeapByteBuffer;
.super Ljava/nio/BaseByteBuffer;
.source "HeapByteBuffer.java"


# instance fields
.field protected final backingArray:[B

.field protected final offset:I


# direct methods
.method constructor <init>(I)V
    .registers 4
    .parameter "capacity"

    .prologue
    .line 46
    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/HeapByteBuffer;-><init>([BII)V

    .line 47
    return-void
.end method

.method constructor <init>([B)V
    .registers 4
    .parameter "backingArray"

    .prologue
    .line 42
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/HeapByteBuffer;-><init>([BII)V

    .line 43
    return-void
.end method

.method constructor <init>([BII)V
    .registers 7
    .parameter "backingArray"
    .parameter "capacity"
    .parameter "offset"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/nio/BaseByteBuffer;-><init>(ILjava/nio/MemoryBlock;)V

    .line 51
    iput-object p1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    .line 52
    iput p3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    .line 53
    add-int v0, p3, p2

    array-length v1, p1

    if-le v0, v1, :cond_3b

    .line 54
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backingArray.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", capacity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_3b
    return-void
.end method


# virtual methods
.method public final get()B
    .registers 5

    .prologue
    .line 105
    iget v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    iget v1, p0, Ljava/nio/HeapByteBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 106
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 108
    :cond_c
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    return v0
.end method

.method public final get(I)B
    .registers 4
    .parameter "index"

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->checkIndex(I)V

    .line 114
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method public final get([BII)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "byteCount"

    .prologue
    .line 61
    const/4 v0, 0x1

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/HeapByteBuffer;->checkGetBounds(IIII)I

    .line 62
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    .line 64
    return-object p0
.end method

.method final get([CII)V
    .registers 11
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "charCount"

    .prologue
    const/4 v5, 0x2

    .line 68
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/HeapByteBuffer;->checkGetBounds(IIII)I

    move-result v2

    .line 69
    .local v2, byteCount:I
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v1, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int v4, v0, v1

    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/OSMemory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 70
    iget v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    .line 71
    return-void
.end method

.method final get([DII)V
    .registers 11
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "doubleCount"

    .prologue
    const/16 v5, 0x8

    .line 74
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/HeapByteBuffer;->checkGetBounds(IIII)I

    move-result v2

    .line 75
    .local v2, byteCount:I
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v1, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int v4, v0, v1

    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/OSMemory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 76
    iget v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    .line 77
    return-void
.end method

.method final get([FII)V
    .registers 11
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "floatCount"

    .prologue
    const/4 v5, 0x4

    .line 80
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/HeapByteBuffer;->checkGetBounds(IIII)I

    move-result v2

    .line 81
    .local v2, byteCount:I
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v1, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int v4, v0, v1

    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/OSMemory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 82
    iget v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    .line 83
    return-void
.end method

.method final get([III)V
    .registers 11
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "intCount"

    .prologue
    const/4 v5, 0x4

    .line 86
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/HeapByteBuffer;->checkGetBounds(IIII)I

    move-result v2

    .line 87
    .local v2, byteCount:I
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v1, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int v4, v0, v1

    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/OSMemory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 88
    iget v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    .line 89
    return-void
.end method

.method final get([JII)V
    .registers 11
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "longCount"

    .prologue
    const/16 v5, 0x8

    .line 92
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/HeapByteBuffer;->checkGetBounds(IIII)I

    move-result v2

    .line 93
    .local v2, byteCount:I
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v1, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int v4, v0, v1

    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/OSMemory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 94
    iget v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    .line 95
    return-void
.end method

.method final get([SII)V
    .registers 11
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "shortCount"

    .prologue
    const/4 v5, 0x2

    .line 98
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/HeapByteBuffer;->checkGetBounds(IIII)I

    move-result v2

    .line 99
    .local v2, byteCount:I
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v1, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int v4, v0, v1

    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/OSMemory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 100
    iget v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    .line 101
    return-void
.end method

.method public final getChar()C
    .registers 6

    .prologue
    .line 119
    iget v2, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/lit8 v0, v2, 0x2

    .line 120
    .local v0, newPosition:I
    iget v2, p0, Ljava/nio/HeapByteBuffer;->limit:I

    if-le v0, v2, :cond_e

    .line 121
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 123
    :cond_e
    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/HeapByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4}, Lorg/apache/harmony/luni/platform/OSMemory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v2

    int-to-char v1, v2

    .line 124
    .local v1, result:C
    iput v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    .line 125
    return v1
.end method

.method public final getChar(I)C
    .registers 5
    .parameter "index"

    .prologue
    .line 130
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)V

    .line 131
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final getDouble()D
    .registers 3

    .prologue
    .line 136
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getDouble(I)D
    .registers 4
    .parameter "index"

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getFloat()F
    .registers 2

    .prologue
    .line 146
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final getFloat(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final getInt()I
    .registers 6

    .prologue
    .line 156
    iget v2, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/lit8 v0, v2, 0x4

    .line 157
    .local v0, newPosition:I
    iget v2, p0, Ljava/nio/HeapByteBuffer;->limit:I

    if-le v0, v2, :cond_e

    .line 158
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 160
    :cond_e
    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/HeapByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v1

    .line 161
    .local v1, result:I
    iput v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    .line 162
    return v1
.end method

.method public final getInt(I)I
    .registers 5
    .parameter "index"

    .prologue
    .line 167
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)V

    .line 168
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    return v0
.end method

.method public final getLong()J
    .registers 7

    .prologue
    .line 173
    iget v3, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/lit8 v0, v3, 0x8

    .line 174
    .local v0, newPosition:I
    iget v3, p0, Ljava/nio/HeapByteBuffer;->limit:I

    if-le v0, v3, :cond_e

    .line 175
    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    .line 177
    :cond_e
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v4, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v5, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/2addr v4, v5

    iget-object v5, p0, Ljava/nio/HeapByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v5}, Lorg/apache/harmony/luni/platform/OSMemory;->peekLong([BILjava/nio/ByteOrder;)J

    move-result-wide v1

    .line 178
    .local v1, result:J
    iput v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    .line 179
    return-wide v1
.end method

.method public final getLong(I)J
    .registers 5
    .parameter "index"

    .prologue
    .line 184
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)V

    .line 185
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->peekLong([BILjava/nio/ByteOrder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getShort()S
    .registers 6

    .prologue
    .line 190
    iget v2, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/lit8 v0, v2, 0x2

    .line 191
    .local v0, newPosition:I
    iget v2, p0, Ljava/nio/HeapByteBuffer;->limit:I

    if-le v0, v2, :cond_e

    .line 192
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 194
    :cond_e
    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/HeapByteBuffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/HeapByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4}, Lorg/apache/harmony/luni/platform/OSMemory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v1

    .line 195
    .local v1, result:S
    iput v0, p0, Ljava/nio/HeapByteBuffer;->position:I

    .line 196
    return v1
.end method

.method public final getShort(I)S
    .registers 5
    .parameter "index"

    .prologue
    .line 201
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)V

    .line 202
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    return v0
.end method

.method public final isDirect()Z
    .registers 2

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method
