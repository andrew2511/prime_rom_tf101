.class public abstract Ljava/nio/LongBuffer;
.super Ljava/nio/Buffer;
.source "LongBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/LongBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 4
    .parameter "capacity"

    .prologue
    .line 95
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/Buffer;-><init>(IILjava/nio/MemoryBlock;)V

    .line 96
    return-void
.end method

.method public static allocate(I)Ljava/nio/LongBuffer;
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
    new-instance v0, Ljava/nio/ReadWriteLongArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteLongArrayBuffer;-><init>(I)V

    return-object v0
.end method

.method public static wrap([J)Ljava/nio/LongBuffer;
    .registers 3
    .parameter "array"

    .prologue
    .line 65
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/LongBuffer;->wrap([JII)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([JII)Ljava/nio/LongBuffer;
    .registers 5
    .parameter "array"
    .parameter "start"
    .parameter "longCount"

    .prologue
    .line 87
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 88
    new-instance v0, Ljava/nio/ReadWriteLongArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteLongArrayBuffer;-><init>([J)V

    .line 89
    .local v0, buf:Ljava/nio/LongBuffer;
    iput p1, v0, Ljava/nio/ReadWriteLongArrayBuffer;->position:I

    .line 90
    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/ReadWriteLongArrayBuffer;->limit:I

    .line 91
    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->array()[J

    move-result-object v0

    return-object v0
.end method

.method public final array()[J
    .registers 2

    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->protectedArray()[J

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .registers 2

    .prologue
    .line 103
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/LongBuffer;
.end method

.method public abstract compact()Ljava/nio/LongBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Ljava/nio/LongBuffer;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/nio/LongBuffer;->compareTo(Ljava/nio/LongBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/LongBuffer;)I
    .registers 11
    .parameter "otherBuffer"

    .prologue
    .line 147
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v8

    if-ge v7, v8, :cond_27

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v7

    move v0, v7

    .line 149
    .local v0, compareRemaining:I
    :goto_f
    iget v6, p0, Ljava/nio/LongBuffer;->position:I

    .line 150
    .local v6, thisPos:I
    iget v3, p1, Ljava/nio/LongBuffer;->position:I

    .line 153
    .local v3, otherPos:I
    :goto_13
    if-lez v0, :cond_36

    .line 154
    invoke-virtual {p0, v6}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v4

    .line 155
    .local v4, thisLong:J
    invoke-virtual {p1, v3}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v1

    .line 156
    .local v1, otherLong:J
    cmp-long v7, v4, v1

    if-eqz v7, :cond_2f

    .line 157
    cmp-long v7, v4, v1

    if-gez v7, :cond_2d

    const/4 v7, -0x1

    .line 164
    .end local v1           #otherLong:J
    .end local v4           #thisLong:J
    :goto_26
    return v7

    .line 147
    .end local v0           #compareRemaining:I
    .end local v3           #otherPos:I
    .end local v6           #thisPos:I
    :cond_27
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v7

    move v0, v7

    goto :goto_f

    .line 157
    .restart local v0       #compareRemaining:I
    .restart local v1       #otherLong:J
    .restart local v3       #otherPos:I
    .restart local v4       #thisLong:J
    .restart local v6       #thisPos:I
    :cond_2d
    const/4 v7, 0x1

    goto :goto_26

    .line 159
    :cond_2f
    add-int/lit8 v6, v6, 0x1

    .line 160
    add-int/lit8 v3, v3, 0x1

    .line 161
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 164
    .end local v1           #otherLong:J
    .end local v4           #thisLong:J
    :cond_36
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_26
.end method

.method public abstract duplicate()Ljava/nio/LongBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .parameter "other"

    .prologue
    const/4 v11, 0x0

    .line 196
    instance-of v7, p1, Ljava/nio/LongBuffer;

    if-nez v7, :cond_7

    move v7, v11

    .line 212
    :goto_6
    return v7

    .line 199
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/nio/LongBuffer;

    move-object v4, v0

    .line 201
    .local v4, otherBuffer:Ljava/nio/LongBuffer;
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v7

    invoke-virtual {v4}, Ljava/nio/LongBuffer;->remaining()I

    move-result v8

    if-eq v7, v8, :cond_17

    move v7, v11

    .line 202
    goto :goto_6

    .line 205
    :cond_17
    iget v2, p0, Ljava/nio/LongBuffer;->position:I

    .line 206
    .local v2, myPosition:I
    iget v5, v4, Ljava/nio/LongBuffer;->position:I

    .line 207
    .local v5, otherPosition:I
    const/4 v1, 0x1

    .local v1, equalSoFar:Z
    move v6, v5

    .end local v5           #otherPosition:I
    .local v6, otherPosition:I
    move v3, v2

    .line 208
    .end local v2           #myPosition:I
    .local v3, myPosition:I
    :goto_1e
    if-eqz v1, :cond_3b

    iget v7, p0, Ljava/nio/LongBuffer;->limit:I

    if-ge v3, v7, :cond_3b

    .line 209
    add-int/lit8 v2, v3, 0x1

    .end local v3           #myPosition:I
    .restart local v2       #myPosition:I
    invoke-virtual {p0, v3}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v7

    add-int/lit8 v5, v6, 0x1

    .end local v6           #otherPosition:I
    .restart local v5       #otherPosition:I
    invoke-virtual {v4, v6}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_39

    const/4 v7, 0x1

    move v1, v7

    :goto_36
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
    :cond_39
    move v1, v11

    goto :goto_36

    .end local v2           #myPosition:I
    .end local v5           #otherPosition:I
    .restart local v3       #myPosition:I
    .restart local v6       #otherPosition:I
    :cond_3b
    move v7, v1

    .line 212
    goto :goto_6
.end method

.method public abstract get()J
.end method

.method public abstract get(I)J
.end method

.method public get([J)Ljava/nio/LongBuffer;
    .registers 4
    .parameter "dst"

    .prologue
    .line 238
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/LongBuffer;->get([JII)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([JII)Ljava/nio/LongBuffer;
    .registers 7
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "longCount"

    .prologue
    .line 261
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 262
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_10

    .line 263
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 265
    :cond_10
    move v0, p2

    .local v0, i:I
    :goto_11
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1e

    .line 266
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v1

    aput-wide v1, p1, v0

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 268
    :cond_1e
    return-object p0
.end method

.method public final hasArray()Z
    .registers 2

    .prologue
    .line 283
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 9

    .prologue
    .line 294
    iget v3, p0, Ljava/nio/LongBuffer;->position:I

    .line 295
    .local v3, myPosition:I
    const/4 v0, 0x0

    .line 297
    .local v0, hash:I
    :goto_3
    iget v5, p0, Ljava/nio/LongBuffer;->limit:I

    if-ge v3, v5, :cond_18

    .line 298
    add-int/lit8 v4, v3, 0x1

    .end local v3           #myPosition:I
    .local v4, myPosition:I
    invoke-virtual {p0, v3}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v1

    .line 299
    .local v1, l:J
    long-to-int v5, v1

    add-int/2addr v5, v0

    const/16 v6, 0x20

    shr-long v6, v1, v6

    long-to-int v6, v6

    xor-int v0, v5, v6

    move v3, v4

    .end local v4           #myPosition:I
    .restart local v3       #myPosition:I
    goto :goto_3

    .line 301
    .end local v1           #l:J
    :cond_18
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[J
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(IJ)Ljava/nio/LongBuffer;
.end method

.method public abstract put(J)Ljava/nio/LongBuffer;
.end method

.method public put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;
    .registers 5
    .parameter "src"

    .prologue
    .line 431
    if-ne p1, p0, :cond_8

    .line 432
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 434
    :cond_8
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_18

    .line 435
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 437
    :cond_18
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [J

    .line 438
    .local v0, contents:[J
    invoke-virtual {p1, v0}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 439
    invoke-virtual {p0, v0}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    .line 440
    return-object p0
.end method

.method public final put([J)Ljava/nio/LongBuffer;
    .registers 4
    .parameter "src"

    .prologue
    .line 379
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/LongBuffer;->put([JII)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([JII)Ljava/nio/LongBuffer;
    .registers 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "longCount"

    .prologue
    .line 404
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 405
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_10

    .line 406
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 408
    :cond_10
    move v0, p2

    .local v0, i:I
    :goto_11
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1d

    .line 409
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 411
    :cond_1d
    return-object p0
.end method

.method public abstract slice()Ljava/nio/LongBuffer;
.end method
