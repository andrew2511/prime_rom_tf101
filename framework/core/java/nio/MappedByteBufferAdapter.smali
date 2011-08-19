.class final Ljava/nio/MappedByteBufferAdapter;
.super Ljava/nio/MappedByteBuffer;
.source "MappedByteBufferAdapter.java"


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3
    .parameter "buffer"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/nio/MappedByteBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 51
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v0, v0, Ljava/nio/DirectByteBuffer;->effectiveDirectAddress:I

    iput v0, p0, Ljava/nio/MappedByteBufferAdapter;->effectiveDirectAddress:I

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/nio/MemoryBlock;IILjava/nio/channels/FileChannel$MapMode;)V
    .registers 6
    .parameter "block"
    .parameter "capacity"
    .parameter "offset"
    .parameter "mode"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/MappedByteBuffer;-><init>(Ljava/nio/MemoryBlock;IILjava/nio/channels/FileChannel$MapMode;)V

    .line 56
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v0, v0, Ljava/nio/DirectByteBuffer;->effectiveDirectAddress:I

    iput v0, p0, Ljava/nio/MappedByteBufferAdapter;->effectiveDirectAddress:I

    .line 57
    return-void
.end method


# virtual methods
.method public asCharBuffer()Ljava/nio/CharBuffer;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asFloatBuffer()Ljava/nio/FloatBuffer;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asIntBuffer()Ljava/nio/IntBuffer;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asLongBuffer()Ljava/nio/LongBuffer;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .prologue
    .line 96
    new-instance v0, Ljava/nio/MappedByteBufferAdapter;

    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/MappedByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    .line 97
    .local v0, result:Ljava/nio/MappedByteBufferAdapter;
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBufferAdapter;->limit(I)Ljava/nio/Buffer;

    .line 98
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBufferAdapter;->position(I)Ljava/nio/Buffer;

    .line 99
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->mark:I

    iput v1, v0, Ljava/nio/MappedByteBufferAdapter;->mark:I

    .line 100
    return-object v0
.end method

.method public asShortBuffer()Ljava/nio/ShortBuffer;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 111
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 113
    :cond_e
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 114
    iget v0, p0, Ljava/nio/MappedByteBufferAdapter;->capacity:I

    invoke-virtual {p0, v0}, Ljava/nio/MappedByteBufferAdapter;->limit(I)Ljava/nio/Buffer;

    .line 115
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/MappedByteBufferAdapter;->position(I)Ljava/nio/Buffer;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/MappedByteBufferAdapter;->mark:I

    .line 117
    return-object p0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .registers 3

    .prologue
    .line 122
    new-instance v0, Ljava/nio/MappedByteBufferAdapter;

    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/MappedByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    .line 123
    .local v0, result:Ljava/nio/MappedByteBufferAdapter;
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->limit:I

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBufferAdapter;->limit(I)Ljava/nio/Buffer;

    .line 124
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBufferAdapter;->position(I)Ljava/nio/Buffer;

    .line 125
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->mark:I

    iput v1, v0, Ljava/nio/MappedByteBufferAdapter;->mark:I

    .line 126
    return-object v0
.end method

.method public final free()V
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->free()V

    .line 380
    return-void
.end method

.method public get()B
    .registers 4

    .prologue
    .line 131
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->get()B

    move-result v0

    .line 133
    .local v0, result:B
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 134
    return v0
.end method

.method public get(I)B
    .registers 3
    .parameter "index"

    .prologue
    .line 139
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public get([BII)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "byteCount"

    .prologue
    .line 144
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 145
    .local v0, result:Ljava/nio/ByteBuffer;
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 146
    return-object v0
.end method

.method public getChar()C
    .registers 4

    .prologue
    .line 151
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 152
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->getChar()C

    move-result v0

    .line 153
    .local v0, result:C
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 154
    return v0
.end method

.method public getChar(I)C
    .registers 3
    .parameter "index"

    .prologue
    .line 159
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->getChar(I)C

    move-result v0

    return v0
.end method

.method public getDouble()D
    .registers 5

    .prologue
    .line 164
    iget-object v2, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v3, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v2, v3}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 165
    iget-object v2, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v2}, Ljava/nio/DirectByteBuffer;->getDouble()D

    move-result-wide v0

    .line 166
    .local v0, result:D
    iget v2, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 167
    return-wide v0
.end method

.method public getDouble(I)D
    .registers 4
    .parameter "index"

    .prologue
    .line 172
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat()F
    .registers 4

    .prologue
    .line 177
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 178
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->getFloat()F

    move-result v0

    .line 179
    .local v0, result:F
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 180
    return v0
.end method

.method public getFloat(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 185
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt()I
    .registers 4

    .prologue
    .line 190
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 191
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->getInt()I

    move-result v0

    .line 192
    .local v0, result:I
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 193
    return v0
.end method

.method public getInt(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 198
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong()J
    .registers 5

    .prologue
    .line 203
    iget-object v2, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v3, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v2, v3}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 204
    iget-object v2, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v2}, Ljava/nio/DirectByteBuffer;->getLong()J

    move-result-wide v0

    .line 205
    .local v0, result:J
    iget v2, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 206
    return-wide v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 211
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort()S
    .registers 4

    .prologue
    .line 216
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 217
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->getShort()S

    move-result v0

    .line 218
    .local v0, result:S
    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 219
    return v0
.end method

.method public getShort(I)S
    .registers 3
    .parameter "index"

    .prologue
    .line 224
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public isDirect()Z
    .registers 2

    .prologue
    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method limitImpl(I)V
    .registers 3
    .parameter "newLimit"

    .prologue
    .line 60
    invoke-super {p0, p1}, Ljava/nio/MappedByteBuffer;->limitImpl(I)V

    .line 61
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 62
    return-void
.end method

.method orderImpl(Ljava/nio/ByteOrder;)V
    .registers 3
    .parameter "byteOrder"

    .prologue
    .line 238
    invoke-super {p0, p1}, Ljava/nio/MappedByteBuffer;->orderImpl(Ljava/nio/ByteOrder;)V

    .line 239
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 240
    return-void
.end method

.method positionImpl(I)V
    .registers 3
    .parameter "newPosition"

    .prologue
    .line 65
    invoke-super {p0, p1}, Ljava/nio/MappedByteBuffer;->positionImpl(I)V

    .line 66
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
    return-void
.end method

.method protectedArray()[B
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->protectedArray()[B

    move-result-object v0

    return-object v0
.end method

.method protectedArrayOffset()I
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method protectedHasArray()Z
    .registers 2

    .prologue
    .line 375
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "b"

    .prologue
    .line 244
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 245
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 246
    iget v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 247
    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "index"
    .parameter "b"

    .prologue
    .line 260
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 261
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/DirectByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 262
    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "src"
    .parameter "srcOffset"
    .parameter "byteCount"

    .prologue
    .line 252
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 253
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 254
    iget v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 255
    return-object p0
.end method

.method public putChar(C)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "value"

    .prologue
    .line 267
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 268
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 269
    iget v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 270
    return-object p0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 275
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 276
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/DirectByteBuffer;->putChar(IC)Ljava/nio/ByteBuffer;

    .line 277
    return-object p0
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "value"

    .prologue
    .line 282
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 283
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/DirectByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 284
    iget v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 285
    return-object p0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 290
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 291
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    .line 292
    return-object p0
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "value"

    .prologue
    .line 297
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 298
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 299
    iget v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 300
    return-object p0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 305
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 306
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/DirectByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    .line 307
    return-object p0
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "value"

    .prologue
    .line 319
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 320
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 321
    iget v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 322
    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 312
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 313
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/DirectByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 314
    return-object p0
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 327
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 328
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 329
    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "value"

    .prologue
    .line 334
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 335
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/DirectByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 336
    iget v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 337
    return-object p0
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 342
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 343
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/DirectByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 344
    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "value"

    .prologue
    .line 349
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v1, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 350
    iget-object v0, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DirectByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 351
    iget v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    .line 352
    return-object p0
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .registers 4

    .prologue
    .line 357
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    iget v2, p0, Ljava/nio/MappedByteBufferAdapter;->position:I

    invoke-virtual {v1, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 358
    new-instance v0, Ljava/nio/MappedByteBufferAdapter;

    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/MappedByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    .line 359
    .local v0, result:Ljava/nio/MappedByteBufferAdapter;
    iget-object v1, p0, Ljava/nio/MappedByteBufferAdapter;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->clear()Ljava/nio/Buffer;

    .line 360
    return-object v0
.end method
