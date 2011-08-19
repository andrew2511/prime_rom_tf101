.class public abstract Ljava/nio/FloatBuffer;
.super Ljava/nio/Buffer;
.source "FloatBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/FloatBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 4
    .parameter "capacity"

    .prologue
    .line 97
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/Buffer;-><init>(IILjava/nio/MemoryBlock;)V

    .line 98
    return-void
.end method

.method public static allocate(I)Ljava/nio/FloatBuffer;
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
    new-instance v0, Ljava/nio/ReadWriteFloatArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteFloatArrayBuffer;-><init>(I)V

    return-object v0
.end method

.method public static wrap([F)Ljava/nio/FloatBuffer;
    .registers 3
    .parameter "array"

    .prologue
    .line 65
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/FloatBuffer;->wrap([FII)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([FII)Ljava/nio/FloatBuffer;
    .registers 5
    .parameter "array"
    .parameter "start"
    .parameter "floatCount"

    .prologue
    .line 89
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 90
    new-instance v0, Ljava/nio/ReadWriteFloatArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteFloatArrayBuffer;-><init>([F)V

    .line 91
    .local v0, buf:Ljava/nio/FloatBuffer;
    iput p1, v0, Ljava/nio/ReadWriteFloatArrayBuffer;->position:I

    .line 92
    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/ReadWriteFloatArrayBuffer;->limit:I

    .line 93
    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v0

    return-object v0
.end method

.method public final array()[F
    .registers 2

    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->protectedArray()[F

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .registers 2

    .prologue
    .line 105
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/FloatBuffer;
.end method

.method public abstract compact()Ljava/nio/FloatBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Ljava/nio/FloatBuffer;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->compareTo(Ljava/nio/FloatBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/FloatBuffer;)I
    .registers 9
    .parameter "otherBuffer"

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v6

    if-ge v5, v6, :cond_2f

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v5

    move v0, v5

    .line 151
    .local v0, compareRemaining:I
    :goto_f
    iget v4, p0, Ljava/nio/FloatBuffer;->position:I

    .line 152
    .local v4, thisPos:I
    iget v2, p1, Ljava/nio/FloatBuffer;->position:I

    .line 154
    .local v2, otherPos:I
    :goto_13
    if-lez v0, :cond_3e

    .line 155
    invoke-virtual {p0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    .line 156
    .local v3, thisFloat:F
    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    .line 158
    .local v1, otherFloat:F
    cmpl-float v5, v3, v1

    if-eqz v5, :cond_37

    cmpl-float v5, v3, v3

    if-eqz v5, :cond_29

    cmpl-float v5, v1, v1

    if-nez v5, :cond_37

    .line 160
    :cond_29
    cmpg-float v5, v3, v1

    if-gez v5, :cond_35

    const/4 v5, -0x1

    .line 166
    .end local v1           #otherFloat:F
    .end local v3           #thisFloat:F
    :goto_2e
    return v5

    .line 149
    .end local v0           #compareRemaining:I
    .end local v2           #otherPos:I
    .end local v4           #thisPos:I
    :cond_2f
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v5

    move v0, v5

    goto :goto_f

    .line 160
    .restart local v0       #compareRemaining:I
    .restart local v1       #otherFloat:F
    .restart local v2       #otherPos:I
    .restart local v3       #thisFloat:F
    .restart local v4       #thisPos:I
    :cond_35
    const/4 v5, 0x1

    goto :goto_2e

    .line 162
    :cond_37
    add-int/lit8 v4, v4, 0x1

    .line 163
    add-int/lit8 v2, v2, 0x1

    .line 164
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 166
    .end local v1           #otherFloat:F
    .end local v3           #thisFloat:F
    :cond_3e
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_2e
.end method

.method public abstract duplicate()Ljava/nio/FloatBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .parameter "other"

    .prologue
    const/4 v11, 0x0

    .line 203
    instance-of v9, p1, Ljava/nio/FloatBuffer;

    if-nez v9, :cond_7

    move v9, v11

    .line 221
    :goto_6
    return v9

    .line 206
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/nio/FloatBuffer;

    move-object v6, v0

    .line 208
    .local v6, otherBuffer:Ljava/nio/FloatBuffer;
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v9

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v10

    if-eq v9, v10, :cond_17

    move v9, v11

    .line 209
    goto :goto_6

    .line 212
    :cond_17
    iget v4, p0, Ljava/nio/FloatBuffer;->position:I

    .line 213
    .local v4, myPosition:I
    iget v7, v6, Ljava/nio/FloatBuffer;->position:I

    .line 214
    .local v7, otherPosition:I
    const/4 v3, 0x1

    .local v3, equalSoFar:Z
    move v8, v7

    .end local v7           #otherPosition:I
    .local v8, otherPosition:I
    move v5, v4

    .line 215
    .end local v4           #myPosition:I
    .local v5, myPosition:I
    :goto_1e
    if-eqz v3, :cond_43

    iget v9, p0, Ljava/nio/FloatBuffer;->limit:I

    if-ge v5, v9, :cond_43

    .line 216
    add-int/lit8 v4, v5, 0x1

    .end local v5           #myPosition:I
    .restart local v4       #myPosition:I
    invoke-virtual {p0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    .line 217
    .local v1, a:F
    add-int/lit8 v7, v8, 0x1

    .end local v8           #otherPosition:I
    .restart local v7       #otherPosition:I
    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    .line 218
    .local v2, b:F
    cmpl-float v9, v1, v2

    if-eqz v9, :cond_3c

    cmpl-float v9, v1, v1

    if-eqz v9, :cond_41

    cmpl-float v9, v2, v2

    if-eqz v9, :cond_41

    :cond_3c
    const/4 v9, 0x1

    move v3, v9

    :goto_3e
    move v8, v7

    .end local v7           #otherPosition:I
    .restart local v8       #otherPosition:I
    move v5, v4

    .line 219
    .end local v4           #myPosition:I
    .restart local v5       #myPosition:I
    goto :goto_1e

    .end local v5           #myPosition:I
    .end local v8           #otherPosition:I
    .restart local v4       #myPosition:I
    .restart local v7       #otherPosition:I
    :cond_41
    move v3, v11

    .line 218
    goto :goto_3e

    .end local v1           #a:F
    .end local v2           #b:F
    .end local v4           #myPosition:I
    .end local v7           #otherPosition:I
    .restart local v5       #myPosition:I
    .restart local v8       #otherPosition:I
    :cond_43
    move v9, v3

    .line 221
    goto :goto_6
.end method

.method public abstract get()F
.end method

.method public abstract get(I)F
.end method

.method public get([F)Ljava/nio/FloatBuffer;
    .registers 4
    .parameter "dst"

    .prologue
    .line 248
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([FII)Ljava/nio/FloatBuffer;
    .registers 6
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "floatCount"

    .prologue
    .line 271
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 272
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_10

    .line 273
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 275
    :cond_10
    move v0, p2

    .local v0, i:I
    :goto_11
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1e

    .line 276
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v1

    aput v1, p1, v0

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 278
    :cond_1e
    return-object p0
.end method

.method public final hasArray()Z
    .registers 2

    .prologue
    .line 293
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 304
    iget v1, p0, Ljava/nio/FloatBuffer;->position:I

    .line 305
    .local v1, myPosition:I
    const/4 v0, 0x0

    .line 306
    .local v0, hash:I
    :goto_3
    iget v3, p0, Ljava/nio/FloatBuffer;->limit:I

    if-ge v1, v3, :cond_14

    .line 307
    add-int/lit8 v2, v1, 0x1

    .end local v1           #myPosition:I
    .local v2, myPosition:I
    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v0, v3

    move v1, v2

    .end local v2           #myPosition:I
    .restart local v1       #myPosition:I
    goto :goto_3

    .line 309
    :cond_14
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[F
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(F)Ljava/nio/FloatBuffer;
.end method

.method public abstract put(IF)Ljava/nio/FloatBuffer;
.end method

.method public put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .registers 5
    .parameter "src"

    .prologue
    .line 439
    if-ne p1, p0, :cond_8

    .line 440
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 442
    :cond_8
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_18

    .line 443
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 445
    :cond_18
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [F

    .line 446
    .local v0, contents:[F
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 447
    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 448
    return-object p0
.end method

.method public final put([F)Ljava/nio/FloatBuffer;
    .registers 4
    .parameter "src"

    .prologue
    .line 387
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([FII)Ljava/nio/FloatBuffer;
    .registers 6
    .parameter "src"
    .parameter "srcOffset"
    .parameter "floatCount"

    .prologue
    .line 412
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 413
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_10

    .line 414
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 416
    :cond_10
    move v0, p2

    .local v0, i:I
    :goto_11
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1d

    .line 417
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 419
    :cond_1d
    return-object p0
.end method

.method public abstract slice()Ljava/nio/FloatBuffer;
.end method
