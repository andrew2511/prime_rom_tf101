.class public abstract Ljava/nio/IntBuffer;
.super Ljava/nio/Buffer;
.source "IntBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/IntBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 4
    .parameter "capacity"

    .prologue
    .line 93
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/Buffer;-><init>(IILjava/nio/MemoryBlock;)V

    .line 94
    return-void
.end method

.method public static allocate(I)Ljava/nio/IntBuffer;
    .registers 2
    .parameter "capacity"

    .prologue
    .line 46
    if-gez p0, :cond_8

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 49
    :cond_8
    new-instance v0, Ljava/nio/ReadWriteIntArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteIntArrayBuffer;-><init>(I)V

    return-object v0
.end method

.method public static wrap([I)Ljava/nio/IntBuffer;
    .registers 3
    .parameter "array"

    .prologue
    .line 63
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/IntBuffer;->wrap([III)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([III)Ljava/nio/IntBuffer;
    .registers 5
    .parameter "array"
    .parameter "start"
    .parameter "intCount"

    .prologue
    .line 85
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 86
    new-instance v0, Ljava/nio/ReadWriteIntArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteIntArrayBuffer;-><init>([I)V

    .line 87
    .local v0, buf:Ljava/nio/IntBuffer;
    iput p1, v0, Ljava/nio/ReadWriteIntArrayBuffer;->position:I

    .line 88
    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/ReadWriteIntArrayBuffer;->limit:I

    .line 89
    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v0

    return-object v0
.end method

.method public final array()[I
    .registers 2

    .prologue
    .line 97
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->protectedArray()[I

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .registers 2

    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/IntBuffer;
.end method

.method public abstract compact()Ljava/nio/IntBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, Ljava/nio/IntBuffer;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->compareTo(Ljava/nio/IntBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/IntBuffer;)I
    .registers 9
    .parameter "otherBuffer"

    .prologue
    .line 145
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v6

    if-ge v5, v6, :cond_23

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v5

    move v0, v5

    .line 147
    .local v0, compareRemaining:I
    :goto_f
    iget v4, p0, Ljava/nio/IntBuffer;->position:I

    .line 148
    .local v4, thisPos:I
    iget v2, p1, Ljava/nio/IntBuffer;->position:I

    .line 151
    .local v2, otherPos:I
    :goto_13
    if-lez v0, :cond_32

    .line 152
    invoke-virtual {p0, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    .line 153
    .local v3, thisInt:I
    invoke-virtual {p1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    .line 154
    .local v1, otherInt:I
    if-eq v3, v1, :cond_2b

    .line 155
    if-ge v3, v1, :cond_29

    const/4 v5, -0x1

    .line 162
    .end local v1           #otherInt:I
    .end local v3           #thisInt:I
    :goto_22
    return v5

    .line 145
    .end local v0           #compareRemaining:I
    .end local v2           #otherPos:I
    .end local v4           #thisPos:I
    :cond_23
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v5

    move v0, v5

    goto :goto_f

    .line 155
    .restart local v0       #compareRemaining:I
    .restart local v1       #otherInt:I
    .restart local v2       #otherPos:I
    .restart local v3       #thisInt:I
    .restart local v4       #thisPos:I
    :cond_29
    const/4 v5, 0x1

    goto :goto_22

    .line 157
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    .line 158
    add-int/lit8 v2, v2, 0x1

    .line 159
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 162
    .end local v1           #otherInt:I
    .end local v3           #thisInt:I
    :cond_32
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_22
.end method

.method public abstract duplicate()Ljava/nio/IntBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .parameter "other"

    .prologue
    const/4 v9, 0x0

    .line 194
    instance-of v7, p1, Ljava/nio/IntBuffer;

    if-nez v7, :cond_7

    move v7, v9

    .line 210
    :goto_6
    return v7

    .line 197
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/nio/IntBuffer;

    move-object v4, v0

    .line 199
    .local v4, otherBuffer:Ljava/nio/IntBuffer;
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v7

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->remaining()I

    move-result v8

    if-eq v7, v8, :cond_17

    move v7, v9

    .line 200
    goto :goto_6

    .line 203
    :cond_17
    iget v2, p0, Ljava/nio/IntBuffer;->position:I

    .line 204
    .local v2, myPosition:I
    iget v5, v4, Ljava/nio/IntBuffer;->position:I

    .line 205
    .local v5, otherPosition:I
    const/4 v1, 0x1

    .local v1, equalSoFar:Z
    move v6, v5

    .end local v5           #otherPosition:I
    .local v6, otherPosition:I
    move v3, v2

    .line 206
    .end local v2           #myPosition:I
    .local v3, myPosition:I
    :goto_1e
    if-eqz v1, :cond_39

    iget v7, p0, Ljava/nio/IntBuffer;->limit:I

    if-ge v3, v7, :cond_39

    .line 207
    add-int/lit8 v2, v3, 0x1

    .end local v3           #myPosition:I
    .restart local v2       #myPosition:I
    invoke-virtual {p0, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    add-int/lit8 v5, v6, 0x1

    .end local v6           #otherPosition:I
    .restart local v5       #otherPosition:I
    invoke-virtual {v4, v6}, Ljava/nio/IntBuffer;->get(I)I

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

    .line 210
    goto :goto_6
.end method

.method public abstract get()I
.end method

.method public abstract get(I)I
.end method

.method public get([I)Ljava/nio/IntBuffer;
    .registers 4
    .parameter "dst"

    .prologue
    .line 236
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/IntBuffer;->get([III)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([III)Ljava/nio/IntBuffer;
    .registers 6
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "intCount"

    .prologue
    .line 259
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 260
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_10

    .line 261
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 263
    :cond_10
    move v0, p2

    .local v0, i:I
    :goto_11
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1e

    .line 264
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->get()I

    move-result v1

    aput v1, p1, v0

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 266
    :cond_1e
    return-object p0
.end method

.method public final hasArray()Z
    .registers 2

    .prologue
    .line 281
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 292
    iget v1, p0, Ljava/nio/IntBuffer;->position:I

    .line 293
    .local v1, myPosition:I
    const/4 v0, 0x0

    .line 294
    .local v0, hash:I
    :goto_3
    iget v3, p0, Ljava/nio/IntBuffer;->limit:I

    if-ge v1, v3, :cond_10

    .line 295
    add-int/lit8 v2, v1, 0x1

    .end local v1           #myPosition:I
    .local v2, myPosition:I
    invoke-virtual {p0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    add-int/2addr v0, v3

    move v1, v2

    .end local v2           #myPosition:I
    .restart local v1       #myPosition:I
    goto :goto_3

    .line 297
    :cond_10
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[I
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(I)Ljava/nio/IntBuffer;
.end method

.method public abstract put(II)Ljava/nio/IntBuffer;
.end method

.method public put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .registers 5
    .parameter "src"

    .prologue
    .line 427
    if-ne p1, p0, :cond_8

    .line 428
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 430
    :cond_8
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_18

    .line 431
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 433
    :cond_18
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [I

    .line 434
    .local v0, contents:[I
    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 435
    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 436
    return-object p0
.end method

.method public final put([I)Ljava/nio/IntBuffer;
    .registers 4
    .parameter "src"

    .prologue
    .line 375
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([III)Ljava/nio/IntBuffer;
    .registers 6
    .parameter "src"
    .parameter "srcOffset"
    .parameter "intCount"

    .prologue
    .line 400
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 401
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_10

    .line 402
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 404
    :cond_10
    move v0, p2

    .local v0, i:I
    :goto_11
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1d

    .line 405
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 407
    :cond_1d
    return-object p0
.end method

.method public abstract slice()Ljava/nio/IntBuffer;
.end method
