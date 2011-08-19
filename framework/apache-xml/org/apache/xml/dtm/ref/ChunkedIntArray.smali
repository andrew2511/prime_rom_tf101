.class final Lorg/apache/xml/dtm/ref/ChunkedIntArray;
.super Ljava/lang/Object;
.source "ChunkedIntArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;
    }
.end annotation


# static fields
.field static final chunkalloc:I = 0x400

.field static final lowbits:I = 0xa

.field static final lowmask:I = 0x3ff


# instance fields
.field chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

.field final fastArray:[I

.field lastUsed:I

.field final slotsize:I


# direct methods
.method constructor <init>(I)V
    .registers 7
    .parameter "slotsize"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->slotsize:I

    .line 49
    new-instance v0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;-><init>(Lorg/apache/xml/dtm/ref/ChunkedIntArray;)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    .line 50
    const/16 v0, 0x400

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->fastArray:[I

    .line 51
    iput v4, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ge v3, p1, :cond_30

    .line 60
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "ER_CHUNKEDINTARRAY_NOT_SUPPORTED"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, p1, :cond_62

    .line 62
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*****WARNING: ChunkedIntArray("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") wasting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-int v2, v3, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " words per slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    :cond_62
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->fastArray:[I

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->addElement([I)V

    .line 64
    return-void
.end method


# virtual methods
.method appendSlot(IIII)I
    .registers 12
    .parameter "w0"
    .parameter "w1"
    .parameter "w2"
    .parameter "w3"

    .prologue
    .line 86
    const/4 v4, 0x4

    .line 87
    .local v4, slotsize:I
    iget v5, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v2, v5, 0x4

    .line 88
    .local v2, newoffset:I
    shr-int/lit8 v1, v2, 0xa

    .line 89
    .local v1, chunkpos:I
    and-int/lit16 v3, v2, 0x3ff

    .line 92
    .local v3, slotpos:I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v5}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-le v1, v5, :cond_1e

    .line 93
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    const/16 v6, 0x400

    new-array v6, v6, [I

    invoke-virtual {v5, v6}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->addElement([I)V

    .line 94
    :cond_1e
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object v0

    .line 95
    .local v0, chunk:[I
    aput p1, v0, v3

    .line 96
    add-int/lit8 v5, v3, 0x1

    aput p2, v0, v5

    .line 97
    add-int/lit8 v5, v3, 0x2

    aput p3, v0, v5

    .line 98
    add-int/lit8 v5, v3, 0x3

    aput p4, v0, v5

    .line 100
    iget v5, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    return v5
.end method

.method discardLast()V
    .registers 3

    .prologue
    .line 181
    iget v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    .line 182
    return-void
.end method

.method readEntry(II)I
    .registers 9
    .parameter "position"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v3, 0x4

    if-lt p2, v3, :cond_10

    .line 122
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v4, "ER_OFFSET_BIGGER_THAN_SLOT"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 123
    :cond_10
    mul-int/lit8 p1, p1, 0x4

    .line 124
    shr-int/lit8 v1, p1, 0xa

    .line 125
    .local v1, chunkpos:I
    and-int/lit16 v2, p1, 0x3ff

    .line 126
    .local v2, slotpos:I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object v0

    .line 127
    .local v0, chunk:[I
    add-int v3, v2, p2

    aget v3, v0, v3

    return v3
.end method

.method readSlot(I[I)V
    .registers 8
    .parameter "position"
    .parameter "buffer"

    .prologue
    .line 256
    mul-int/lit8 p1, p1, 0x4

    .line 257
    shr-int/lit8 v1, p1, 0xa

    .line 258
    .local v1, chunkpos:I
    and-int/lit16 v2, p1, 0x3ff

    .line 261
    .local v2, slotpos:I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-le v1, v3, :cond_19

    .line 262
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    const/16 v4, 0x400

    new-array v4, v4, [I

    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->addElement([I)V

    .line 263
    :cond_19
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object v0

    .line 264
    .local v0, chunk:[I
    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v2, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    return-void
.end method

.method slotsUsed()I
    .registers 2

    .prologue
    .line 171
    iget v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    return v0
.end method

.method specialFind(II)I
    .registers 8
    .parameter "startPos"
    .parameter "position"

    .prologue
    .line 141
    move v0, p1

    .line 142
    .local v0, ancestor:I
    :cond_1
    if-lez v0, :cond_15

    .line 145
    mul-int/lit8 v0, v0, 0x4

    .line 146
    shr-int/lit8 v2, v0, 0xa

    .line 147
    .local v2, chunkpos:I
    and-int/lit16 v3, v0, 0x3ff

    .line 148
    .local v3, slotpos:I
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v4, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object v1

    .line 153
    .local v1, chunk:[I
    add-int/lit8 v4, v3, 0x1

    aget v0, v1, v4

    .line 155
    if-ne v0, p2, :cond_1

    .line 159
    .end local v1           #chunk:[I
    .end local v2           #chunkpos:I
    .end local v3           #slotpos:I
    :cond_15
    if-gtz v0, :cond_19

    move v4, p2

    .line 163
    :goto_18
    return v4

    :cond_19
    const/4 v4, -0x1

    goto :goto_18
.end method

.method writeEntry(III)V
    .registers 10
    .parameter "position"
    .parameter "offset"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v3, 0x4

    if-lt p2, v3, :cond_10

    .line 203
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v4, "ER_OFFSET_BIGGER_THAN_SLOT"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 204
    :cond_10
    mul-int/lit8 p1, p1, 0x4

    .line 205
    shr-int/lit8 v1, p1, 0xa

    .line 206
    .local v1, chunkpos:I
    and-int/lit16 v2, p1, 0x3ff

    .line 207
    .local v2, slotpos:I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object v0

    .line 208
    .local v0, chunk:[I
    add-int v3, v2, p2

    aput p3, v0, v3

    .line 210
    return-void
.end method

.method writeSlot(IIIII)V
    .registers 11
    .parameter "position"
    .parameter "w0"
    .parameter "w1"
    .parameter "w2"
    .parameter "w3"

    .prologue
    .line 223
    mul-int/lit8 p1, p1, 0x4

    .line 224
    shr-int/lit8 v1, p1, 0xa

    .line 225
    .local v1, chunkpos:I
    and-int/lit16 v2, p1, 0x3ff

    .line 228
    .local v2, slotpos:I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-le v1, v3, :cond_19

    .line 229
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    const/16 v4, 0x400

    new-array v4, v4, [I

    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->addElement([I)V

    .line 230
    :cond_19
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object v0

    .line 231
    .local v0, chunk:[I
    aput p2, v0, v2

    .line 232
    add-int/lit8 v3, v2, 0x1

    aput p3, v0, v3

    .line 233
    add-int/lit8 v3, v2, 0x2

    aput p4, v0, v3

    .line 234
    add-int/lit8 v3, v2, 0x3

    aput p5, v0, v3

    .line 235
    return-void
.end method
