.class public abstract Ljava/nio/DoubleBuffer;
.super Ljava/nio/Buffer;
.source "DoubleBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/DoubleBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 4
    .parameter "capacity"

    .prologue
    .line 96
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/Buffer;-><init>(IILjava/nio/MemoryBlock;)V

    .line 97
    return-void
.end method

.method public static allocate(I)Ljava/nio/DoubleBuffer;
    .registers 2
    .parameter "capacity"

    .prologue
    .line 49
    if-gez p0, :cond_8

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 52
    :cond_8
    new-instance v0, Ljava/nio/ReadWriteDoubleArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteDoubleArrayBuffer;-><init>(I)V

    return-object v0
.end method

.method public static wrap([D)Ljava/nio/DoubleBuffer;
    .registers 3
    .parameter "array"

    .prologue
    .line 66
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/DoubleBuffer;->wrap([DII)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([DII)Ljava/nio/DoubleBuffer;
    .registers 5
    .parameter "array"
    .parameter "start"
    .parameter "doubleCount"

    .prologue
    .line 88
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 89
    new-instance v0, Ljava/nio/ReadWriteDoubleArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteDoubleArrayBuffer;-><init>([D)V

    .line 90
    .local v0, buf:Ljava/nio/DoubleBuffer;
    iput p1, v0, Ljava/nio/ReadWriteDoubleArrayBuffer;->position:I

    .line 91
    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/ReadWriteDoubleArrayBuffer;->limit:I

    .line 92
    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 36
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->array()[D

    move-result-object v0

    return-object v0
.end method

.method public final array()[D
    .registers 2

    .prologue
    .line 100
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->protectedArray()[D

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .registers 2

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
.end method

.method public abstract compact()Ljava/nio/DoubleBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, Ljava/nio/DoubleBuffer;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/nio/DoubleBuffer;->compareTo(Ljava/nio/DoubleBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/DoubleBuffer;)I
    .registers 11
    .parameter "otherBuffer"

    .prologue
    .line 148
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v8

    if-ge v7, v8, :cond_2f

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v7

    move v0, v7

    .line 150
    .local v0, compareRemaining:I
    :goto_f
    iget v6, p0, Ljava/nio/DoubleBuffer;->position:I

    .line 151
    .local v6, thisPos:I
    iget v3, p1, Ljava/nio/DoubleBuffer;->position:I

    .line 153
    .local v3, otherPos:I
    :goto_13
    if-lez v0, :cond_3e

    .line 154
    invoke-virtual {p0, v6}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v4

    .line 155
    .local v4, thisDouble:D
    invoke-virtual {p1, v3}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v1

    .line 157
    .local v1, otherDouble:D
    cmpl-double v7, v4, v1

    if-eqz v7, :cond_37

    cmpl-double v7, v4, v4

    if-eqz v7, :cond_29

    cmpl-double v7, v1, v1

    if-nez v7, :cond_37

    .line 159
    :cond_29
    cmpg-double v7, v4, v1

    if-gez v7, :cond_35

    const/4 v7, -0x1

    .line 165
    .end local v1           #otherDouble:D
    .end local v4           #thisDouble:D
    :goto_2e
    return v7

    .line 148
    .end local v0           #compareRemaining:I
    .end local v3           #otherPos:I
    .end local v6           #thisPos:I
    :cond_2f
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v7

    move v0, v7

    goto :goto_f

    .line 159
    .restart local v0       #compareRemaining:I
    .restart local v1       #otherDouble:D
    .restart local v3       #otherPos:I
    .restart local v4       #thisDouble:D
    .restart local v6       #thisPos:I
    :cond_35
    const/4 v7, 0x1

    goto :goto_2e

    .line 161
    :cond_37
    add-int/lit8 v6, v6, 0x1

    .line 162
    add-int/lit8 v3, v3, 0x1

    .line 163
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 165
    .end local v1           #otherDouble:D
    .end local v4           #thisDouble:D
    :cond_3e
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_2e
.end method

.method public abstract duplicate()Ljava/nio/DoubleBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 16
    .parameter "other"

    .prologue
    const/4 v13, 0x0

    .line 202
    instance-of v11, p1, Ljava/nio/DoubleBuffer;

    if-nez v11, :cond_7

    move v11, v13

    .line 220
    :goto_6
    return v11

    .line 205
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/nio/DoubleBuffer;

    move-object v8, v0

    .line 207
    .local v8, otherBuffer:Ljava/nio/DoubleBuffer;
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v11

    invoke-virtual {v8}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v12

    if-eq v11, v12, :cond_17

    move v11, v13

    .line 208
    goto :goto_6

    .line 211
    :cond_17
    iget v6, p0, Ljava/nio/DoubleBuffer;->position:I

    .line 212
    .local v6, myPosition:I
    iget v9, v8, Ljava/nio/DoubleBuffer;->position:I

    .line 213
    .local v9, otherPosition:I
    const/4 v5, 0x1

    .local v5, equalSoFar:Z
    move v10, v9

    .end local v9           #otherPosition:I
    .local v10, otherPosition:I
    move v7, v6

    .line 214
    .end local v6           #myPosition:I
    .local v7, myPosition:I
    :goto_1e
    if-eqz v5, :cond_43

    iget v11, p0, Ljava/nio/DoubleBuffer;->limit:I

    if-ge v7, v11, :cond_43

    .line 215
    add-int/lit8 v6, v7, 0x1

    .end local v7           #myPosition:I
    .restart local v6       #myPosition:I
    invoke-virtual {p0, v7}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v1

    .line 216
    .local v1, a:D
    add-int/lit8 v9, v10, 0x1

    .end local v10           #otherPosition:I
    .restart local v9       #otherPosition:I
    invoke-virtual {v8, v10}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v3

    .line 217
    .local v3, b:D
    cmpl-double v11, v1, v3

    if-eqz v11, :cond_3c

    cmpl-double v11, v1, v1

    if-eqz v11, :cond_41

    cmpl-double v11, v3, v3

    if-eqz v11, :cond_41

    :cond_3c
    const/4 v11, 0x1

    move v5, v11

    :goto_3e
    move v10, v9

    .end local v9           #otherPosition:I
    .restart local v10       #otherPosition:I
    move v7, v6

    .line 218
    .end local v6           #myPosition:I
    .restart local v7       #myPosition:I
    goto :goto_1e

    .end local v7           #myPosition:I
    .end local v10           #otherPosition:I
    .restart local v6       #myPosition:I
    .restart local v9       #otherPosition:I
    :cond_41
    move v5, v13

    .line 217
    goto :goto_3e

    .end local v1           #a:D
    .end local v3           #b:D
    .end local v6           #myPosition:I
    .end local v9           #otherPosition:I
    .restart local v7       #myPosition:I
    .restart local v10       #otherPosition:I
    :cond_43
    move v11, v5

    .line 220
    goto :goto_6
.end method

.method public abstract get()D
.end method

.method public abstract get(I)D
.end method

.method public get([D)Ljava/nio/DoubleBuffer;
    .registers 4
    .parameter "dst"

    .prologue
    .line 247
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/DoubleBuffer;->get([DII)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([DII)Ljava/nio/DoubleBuffer;
    .registers 7
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "doubleCount"

    .prologue
    .line 270
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 271
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_10

    .line 272
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 274
    :cond_10
    move v0, p2

    .local v0, i:I
    :goto_11
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1e

    .line 275
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->get()D

    move-result-wide v1

    aput-wide v1, p1, v0

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 277
    :cond_1e
    return-object p0
.end method

.method public final hasArray()Z
    .registers 2

    .prologue
    .line 292
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 9

    .prologue
    .line 303
    iget v3, p0, Ljava/nio/DoubleBuffer;->position:I

    .line 304
    .local v3, myPosition:I
    const/4 v0, 0x0

    .line 306
    .local v0, hash:I
    :goto_3
    iget v5, p0, Ljava/nio/DoubleBuffer;->limit:I

    if-ge v3, v5, :cond_1c

    .line 307
    add-int/lit8 v4, v3, 0x1

    .end local v3           #myPosition:I
    .local v4, myPosition:I
    invoke-virtual {p0, v3}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 308
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

    .line 310
    .end local v1           #l:J
    :cond_1c
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[D
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(D)Ljava/nio/DoubleBuffer;
.end method

.method public abstract put(ID)Ljava/nio/DoubleBuffer;
.end method

.method public put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;
    .registers 5
    .parameter "src"

    .prologue
    .line 440
    if-ne p1, p0, :cond_8

    .line 441
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 443
    :cond_8
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_18

    .line 444
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 446
    :cond_18
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [D

    .line 447
    .local v0, doubles:[D
    invoke-virtual {p1, v0}, Ljava/nio/DoubleBuffer;->get([D)Ljava/nio/DoubleBuffer;

    .line 448
    invoke-virtual {p0, v0}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    .line 449
    return-object p0
.end method

.method public final put([D)Ljava/nio/DoubleBuffer;
    .registers 4
    .parameter "src"

    .prologue
    .line 388
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/DoubleBuffer;->put([DII)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([DII)Ljava/nio/DoubleBuffer;
    .registers 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "doubleCount"

    .prologue
    .line 413
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 414
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_10

    .line 415
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 417
    :cond_10
    move v0, p2

    .local v0, i:I
    :goto_11
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1d

    .line 418
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 420
    :cond_1d
    return-object p0
.end method

.method public abstract slice()Ljava/nio/DoubleBuffer;
.end method
