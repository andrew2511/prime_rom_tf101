.class public abstract Ljava/nio/ByteBuffer;
.super Ljava/nio/Buffer;
.source "ByteBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field order:Ljava/nio/ByteOrder;


# direct methods
.method constructor <init>(ILjava/nio/MemoryBlock;)V
    .registers 4
    .parameter "capacity"
    .parameter "block"

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/nio/Buffer;-><init>(IILjava/nio/MemoryBlock;)V

    .line 113
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    .line 117
    return-void
.end method

.method public static allocate(I)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "capacity"

    .prologue
    .line 48
    if-gez p0, :cond_8

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_8
    new-instance v0, Ljava/nio/ReadWriteHeapByteBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteHeapByteBuffer;-><init>(I)V

    return-object v0
.end method

.method public static allocateDirect(I)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "capacity"

    .prologue
    .line 64
    if-gez p0, :cond_8

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 67
    :cond_8
    new-instance v0, Ljava/nio/ReadWriteDirectByteBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteDirectByteBuffer;-><init>(I)V

    return-object v0
.end method

.method public static wrap([B)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "array"

    .prologue
    .line 81
    new-instance v0, Ljava/nio/ReadWriteHeapByteBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteHeapByteBuffer;-><init>([B)V

    return-object v0
.end method

.method public static wrap([BII)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "array"
    .parameter "start"
    .parameter "byteCount"

    .prologue
    .line 103
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 104
    new-instance v0, Ljava/nio/ReadWriteHeapByteBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteHeapByteBuffer;-><init>([B)V

    .line 105
    .local v0, buf:Ljava/nio/ByteBuffer;
    iput p1, v0, Ljava/nio/ReadWriteHeapByteBuffer;->position:I

    .line 106
    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/ReadWriteHeapByteBuffer;->limit:I

    .line 107
    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 36
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public final array()[B
    .registers 2

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->protectedArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .registers 2

    .prologue
    .line 146
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asCharBuffer()Ljava/nio/CharBuffer;
.end method

.method public abstract asDoubleBuffer()Ljava/nio/DoubleBuffer;
.end method

.method public abstract asFloatBuffer()Ljava/nio/FloatBuffer;
.end method

.method public abstract asIntBuffer()Ljava/nio/IntBuffer;
.end method

.method public abstract asLongBuffer()Ljava/nio/LongBuffer;
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract asShortBuffer()Ljava/nio/ShortBuffer;
.end method

.method public abstract compact()Ljava/nio/ByteBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, Ljava/nio/ByteBuffer;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/ByteBuffer;)I
    .registers 9
    .parameter "otherBuffer"

    .prologue
    .line 294
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-ge v5, v6, :cond_23

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    move v0, v5

    .line 296
    .local v0, compareRemaining:I
    :goto_f
    iget v4, p0, Ljava/nio/ByteBuffer;->position:I

    .line 297
    .local v4, thisPos:I
    iget v2, p1, Ljava/nio/ByteBuffer;->position:I

    .line 299
    .local v2, otherPos:I
    :goto_13
    if-lez v0, :cond_32

    .line 300
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    .line 301
    .local v3, thisByte:B
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 302
    .local v1, otherByte:B
    if-eq v3, v1, :cond_2b

    .line 303
    if-ge v3, v1, :cond_29

    const/4 v5, -0x1

    .line 309
    .end local v1           #otherByte:B
    .end local v3           #thisByte:B
    :goto_22
    return v5

    .line 294
    .end local v0           #compareRemaining:I
    .end local v2           #otherPos:I
    .end local v4           #thisPos:I
    :cond_23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    move v0, v5

    goto :goto_f

    .line 303
    .restart local v0       #compareRemaining:I
    .restart local v1       #otherByte:B
    .restart local v2       #otherPos:I
    .restart local v3       #thisByte:B
    .restart local v4       #thisPos:I
    :cond_29
    const/4 v5, 0x1

    goto :goto_22

    .line 305
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    .line 306
    add-int/lit8 v2, v2, 0x1

    .line 307
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 309
    .end local v1           #otherByte:B
    .end local v3           #thisByte:B
    :cond_32
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_22
.end method

.method public abstract duplicate()Ljava/nio/ByteBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .parameter "other"

    .prologue
    const/4 v9, 0x0

    .line 341
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-nez v7, :cond_7

    move v7, v9

    .line 357
    :goto_6
    return v7

    .line 344
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    move-object v4, v0

    .line 346
    .local v4, otherBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-eq v7, v8, :cond_17

    move v7, v9

    .line 347
    goto :goto_6

    .line 350
    :cond_17
    iget v2, p0, Ljava/nio/ByteBuffer;->position:I

    .line 351
    .local v2, myPosition:I
    iget v5, v4, Ljava/nio/ByteBuffer;->position:I

    .line 352
    .local v5, otherPosition:I
    const/4 v1, 0x1

    .local v1, equalSoFar:Z
    move v6, v5

    .end local v5           #otherPosition:I
    .local v6, otherPosition:I
    move v3, v2

    .line 353
    .end local v2           #myPosition:I
    .local v3, myPosition:I
    :goto_1e
    if-eqz v1, :cond_39

    iget v7, p0, Ljava/nio/ByteBuffer;->limit:I

    if-ge v3, v7, :cond_39

    .line 354
    add-int/lit8 v2, v3, 0x1

    .end local v3           #myPosition:I
    .restart local v2       #myPosition:I
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int/lit8 v5, v6, 0x1

    .end local v6           #otherPosition:I
    .restart local v5       #otherPosition:I
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    if-ne v7, v8, :cond_37

    const/4 v7, 0x1

    move v1, v7

    :goto_34
    move v6, v5

    .end local v5           #otherPosition:I
    .restart local v6       #otherPosition:I
    move v3, v2

    .end local v2           #myPosition:I
    .restart local v3       #myPosition:I
    goto :goto_1e

    .end local v3           #myPosition:I
    .end local v6           #otherPosition:I
    .restart local v2       #myPosition:I
    .restart local v5       #otherPosition:I
    :cond_37
    move v1, v9

    goto :goto_34

    .end local v2           #myPosition:I
    .end local v5           #otherPosition:I
    .restart local v3       #myPosition:I
    .restart local v6       #otherPosition:I
    :cond_39
    move v7, v1

    .line 357
    goto :goto_6
.end method

.method public abstract get()B
.end method

.method public abstract get(I)B
.end method

.method public get([B)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "dst"

    .prologue
    .line 383
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([BII)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "byteCount"

    .prologue
    .line 404
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 405
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_10

    .line 406
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 408
    :cond_10
    move v0, p2

    .local v0, i:I
    :goto_11
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1e

    .line 409
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    aput-byte v1, p1, v0

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 411
    :cond_1e
    return-object p0
.end method

.method public abstract getChar()C
.end method

.method public abstract getChar(I)C
.end method

.method public abstract getDouble()D
.end method

.method public abstract getDouble(I)D
.end method

.method public abstract getFloat()F
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt()I
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong()J
.end method

.method public abstract getLong(I)J
.end method

.method public abstract getShort()S
.end method

.method public abstract getShort(I)S
.end method

.method public final hasArray()Z
    .registers 2

    .prologue
    .line 596
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 607
    iget v1, p0, Ljava/nio/ByteBuffer;->position:I

    .line 608
    .local v1, myPosition:I
    const/4 v0, 0x0

    .line 609
    .local v0, hash:I
    :goto_3
    iget v3, p0, Ljava/nio/ByteBuffer;->limit:I

    if-ge v1, v3, :cond_10

    .line 610
    add-int/lit8 v2, v1, 0x1

    .end local v1           #myPosition:I
    .local v2, myPosition:I
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/2addr v0, v3

    move v1, v2

    .end local v2           #myPosition:I
    .restart local v1       #myPosition:I
    goto :goto_3

    .line 612
    :cond_10
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public final order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "byteOrder"

    .prologue
    .line 646
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->orderImpl(Ljava/nio/ByteOrder;)V

    .line 647
    return-object p0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 633
    iget-object v0, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method orderImpl(Ljava/nio/ByteOrder;)V
    .registers 2
    .parameter "byteOrder"

    .prologue
    .line 654
    if-nez p1, :cond_4

    .line 655
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 657
    :cond_4
    iput-object p1, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    .line 658
    return-void
.end method

.method abstract protectedArray()[B
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(B)Ljava/nio/ByteBuffer;
.end method

.method public abstract put(IB)Ljava/nio/ByteBuffer;
.end method

.method public put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "src"

    .prologue
    .line 763
    if-ne p1, p0, :cond_8

    .line 764
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 766
    :cond_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_18

    .line 767
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 769
    :cond_18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [B

    .line 770
    .local v0, contents:[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 771
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 772
    return-object p0
.end method

.method public final put([B)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "src"

    .prologue
    .line 711
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "src"
    .parameter "srcOffset"
    .parameter "byteCount"

    .prologue
    .line 736
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 737
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_10

    .line 738
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 740
    :cond_10
    move v0, p2

    .local v0, i:I
    :goto_11
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1d

    .line 741
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 740
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 743
    :cond_1d
    return-object p0
.end method

.method public abstract putChar(C)Ljava/nio/ByteBuffer;
.end method

.method public abstract putChar(IC)Ljava/nio/ByteBuffer;
.end method

.method public abstract putDouble(D)Ljava/nio/ByteBuffer;
.end method

.method public abstract putDouble(ID)Ljava/nio/ByteBuffer;
.end method

.method public abstract putFloat(F)Ljava/nio/ByteBuffer;
.end method

.method public abstract putFloat(IF)Ljava/nio/ByteBuffer;
.end method

.method public abstract putInt(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract putInt(II)Ljava/nio/ByteBuffer;
.end method

.method public abstract putLong(IJ)Ljava/nio/ByteBuffer;
.end method

.method public abstract putLong(J)Ljava/nio/ByteBuffer;
.end method

.method public abstract putShort(IS)Ljava/nio/ByteBuffer;
.end method

.method public abstract putShort(S)Ljava/nio/ByteBuffer;
.end method

.method public abstract slice()Ljava/nio/ByteBuffer;
.end method
