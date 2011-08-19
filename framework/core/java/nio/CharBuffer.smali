.class public abstract Ljava/nio/CharBuffer;
.super Ljava/nio/Buffer;
.source "CharBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;
.implements Ljava/lang/Readable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/CharBuffer;",
        ">;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Appendable;",
        "Ljava/lang/Readable;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 4
    .parameter "capacity"

    .prologue
    .line 141
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/Buffer;-><init>(IILjava/nio/MemoryBlock;)V

    .line 142
    return-void
.end method

.method public static allocate(I)Ljava/nio/CharBuffer;
    .registers 2
    .parameter "capacity"

    .prologue
    .line 51
    if-gez p0, :cond_8

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 54
    :cond_8
    new-instance v0, Ljava/nio/ReadWriteCharArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteCharArrayBuffer;-><init>(I)V

    return-object v0
.end method

.method public static wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
    .registers 2
    .parameter "chseq"

    .prologue
    .line 108
    new-instance v0, Ljava/nio/CharSequenceAdapter;

    invoke-direct {v0, p0}, Ljava/nio/CharSequenceAdapter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;
    .registers 7
    .parameter "cs"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 131
    if-ltz p1, :cond_a

    if-lt p2, p1, :cond_a

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le p2, v1, :cond_3b

    .line 132
    :cond_a
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cs.length()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_3b
    new-instance v0, Ljava/nio/CharSequenceAdapter;

    invoke-direct {v0, p0}, Ljava/nio/CharSequenceAdapter;-><init>(Ljava/lang/CharSequence;)V

    .line 135
    .local v0, result:Ljava/nio/CharBuffer;
    iput p1, v0, Ljava/nio/CharSequenceAdapter;->position:I

    .line 136
    iput p2, v0, Ljava/nio/CharSequenceAdapter;->limit:I

    .line 137
    return-object v0
.end method

.method public static wrap([C)Ljava/nio/CharBuffer;
    .registers 3
    .parameter "array"

    .prologue
    .line 68
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([CII)Ljava/nio/CharBuffer;
    .registers 5
    .parameter "array"
    .parameter "start"
    .parameter "charCount"

    .prologue
    .line 90
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 91
    new-instance v0, Ljava/nio/ReadWriteCharArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteCharArrayBuffer;-><init>([C)V

    .line 92
    .local v0, buf:Ljava/nio/CharBuffer;
    iput p1, v0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    .line 93
    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/ReadWriteCharArrayBuffer;->limit:I

    .line 94
    return-object v0
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->append(C)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Ljava/nio/CharBuffer;
    .registers 3
    .parameter "c"

    .prologue
    .line 658
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
    .registers 3
    .parameter "csq"

    .prologue
    .line 679
    if-eqz p1, :cond_b

    .line 680
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 682
    :goto_a
    return-object v0

    :cond_b
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v0

    goto :goto_a
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;
    .registers 6
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 706
    if-nez p1, :cond_4

    .line 707
    const-string p1, "null"

    .line 709
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 710
    .local v0, cs:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_17

    .line 711
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 713
    :goto_16
    return-object v1

    :cond_17
    move-object v1, p0

    goto :goto_16
.end method

.method public bridge synthetic array()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    return-object v0
.end method

.method public final array()[C
    .registers 2

    .prologue
    .line 145
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->protectedArray()[C

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .registers 2

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/CharBuffer;
.end method

.method public final charAt(I)C
    .registers 5
    .parameter "index"

    .prologue
    .line 181
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    if-lt p1, v0, :cond_2f

    .line 182
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remaining()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_2f
    iget v0, p0, Ljava/nio/CharBuffer;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get(I)C

    move-result v0

    return v0
.end method

.method public abstract compact()Ljava/nio/CharBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Ljava/nio/CharBuffer;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->compareTo(Ljava/nio/CharBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/CharBuffer;)I
    .registers 9
    .parameter "otherBuffer"

    .prologue
    .line 213
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v6

    if-ge v5, v6, :cond_23

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    move v0, v5

    .line 215
    .local v0, compareRemaining:I
    :goto_f
    iget v4, p0, Ljava/nio/CharBuffer;->position:I

    .line 216
    .local v4, thisPos:I
    iget v2, p1, Ljava/nio/CharBuffer;->position:I

    .line 218
    .local v2, otherPos:I
    :goto_13
    if-lez v0, :cond_32

    .line 219
    invoke-virtual {p0, v4}, Ljava/nio/CharBuffer;->get(I)C

    move-result v3

    .line 220
    .local v3, thisByte:C
    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->get(I)C

    move-result v1

    .line 221
    .local v1, otherByte:C
    if-eq v3, v1, :cond_2b

    .line 222
    if-ge v3, v1, :cond_29

    const/4 v5, -0x1

    .line 228
    .end local v1           #otherByte:C
    .end local v3           #thisByte:C
    :goto_22
    return v5

    .line 213
    .end local v0           #compareRemaining:I
    .end local v2           #otherPos:I
    .end local v4           #thisPos:I
    :cond_23
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    move v0, v5

    goto :goto_f

    .line 222
    .restart local v0       #compareRemaining:I
    .restart local v1       #otherByte:C
    .restart local v2       #otherPos:I
    .restart local v3       #thisByte:C
    .restart local v4       #thisPos:I
    :cond_29
    const/4 v5, 0x1

    goto :goto_22

    .line 224
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    .line 225
    add-int/lit8 v2, v2, 0x1

    .line 226
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 228
    .end local v1           #otherByte:C
    .end local v3           #thisByte:C
    :cond_32
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_22
.end method

.method public abstract duplicate()Ljava/nio/CharBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .parameter "other"

    .prologue
    const/4 v9, 0x0

    .line 260
    instance-of v7, p1, Ljava/nio/CharBuffer;

    if-nez v7, :cond_7

    move v7, v9

    .line 276
    :goto_6
    return v7

    .line 263
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/nio/CharBuffer;

    move-object v4, v0

    .line 265
    .local v4, otherBuffer:Ljava/nio/CharBuffer;
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v7

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->remaining()I

    move-result v8

    if-eq v7, v8, :cond_17

    move v7, v9

    .line 266
    goto :goto_6

    .line 269
    :cond_17
    iget v2, p0, Ljava/nio/CharBuffer;->position:I

    .line 270
    .local v2, myPosition:I
    iget v5, v4, Ljava/nio/CharBuffer;->position:I

    .line 271
    .local v5, otherPosition:I
    const/4 v1, 0x1

    .local v1, equalSoFar:Z
    move v6, v5

    .end local v5           #otherPosition:I
    .local v6, otherPosition:I
    move v3, v2

    .line 272
    .end local v2           #myPosition:I
    .local v3, myPosition:I
    :goto_1e
    if-eqz v1, :cond_39

    iget v7, p0, Ljava/nio/CharBuffer;->limit:I

    if-ge v3, v7, :cond_39

    .line 273
    add-int/lit8 v2, v3, 0x1

    .end local v3           #myPosition:I
    .restart local v2       #myPosition:I
    invoke-virtual {p0, v3}, Ljava/nio/CharBuffer;->get(I)C

    move-result v7

    add-int/lit8 v5, v6, 0x1

    .end local v6           #otherPosition:I
    .restart local v5       #otherPosition:I
    invoke-virtual {v4, v6}, Ljava/nio/CharBuffer;->get(I)C

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

    .line 276
    goto :goto_6
.end method

.method public abstract get()C
.end method

.method public abstract get(I)C
.end method

.method public get([C)Ljava/nio/CharBuffer;
    .registers 4
    .parameter "dst"

    .prologue
    .line 302
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([CII)Ljava/nio/CharBuffer;
    .registers 6
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "charCount"

    .prologue
    .line 325
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 326
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_10

    .line 327
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 329
    :cond_10
    move v0, p2

    .local v0, i:I
    :goto_11
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1e

    .line 330
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    aput-char v1, p1, v0

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 332
    :cond_1e
    return-object p0
.end method

.method public final hasArray()Z
    .registers 2

    .prologue
    .line 347
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 358
    iget v1, p0, Ljava/nio/CharBuffer;->position:I

    .line 359
    .local v1, myPosition:I
    const/4 v0, 0x0

    .line 360
    .local v0, hash:I
    :goto_3
    iget v3, p0, Ljava/nio/CharBuffer;->limit:I

    if-ge v1, v3, :cond_10

    .line 361
    add-int/lit8 v2, v1, 0x1

    .end local v1           #myPosition:I
    .local v2, myPosition:I
    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->get(I)C

    move-result v3

    add-int/2addr v0, v3

    move v1, v2

    .end local v2           #myPosition:I
    .restart local v1       #myPosition:I
    goto :goto_3

    .line 363
    :cond_10
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public final length()I
    .registers 2

    .prologue
    .line 384
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[C
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(C)Ljava/nio/CharBuffer;
.end method

.method public abstract put(IC)Ljava/nio/CharBuffer;
.end method

.method public final put(Ljava/lang/String;)Ljava/nio/CharBuffer;
    .registers 4
    .parameter "str"

    .prologue
    .line 547
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;II)Ljava/nio/CharBuffer;
    .registers 8
    .parameter "str"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 571
    if-ltz p2, :cond_a

    if-lt p3, p2, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le p3, v1, :cond_3b

    .line 572
    :cond_a
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "str.length()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    :cond_3b
    sub-int v1, p3, p2

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_49

    .line 576
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 578
    :cond_49
    move v0, p2

    .local v0, i:I
    :goto_4a
    if-ge v0, p3, :cond_56

    .line 579
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 581
    :cond_56
    return-object p0
.end method

.method public put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    .registers 5
    .parameter "src"

    .prologue
    .line 502
    if-ne p1, p0, :cond_8

    .line 503
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 505
    :cond_8
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_18

    .line 506
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 509
    :cond_18
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [C

    .line 510
    .local v0, contents:[C
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 511
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    .line 512
    return-object p0
.end method

.method public final put([C)Ljava/nio/CharBuffer;
    .registers 4
    .parameter "src"

    .prologue
    .line 450
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([CII)Ljava/nio/CharBuffer;
    .registers 6
    .parameter "src"
    .parameter "srcOffset"
    .parameter "charCount"

    .prologue
    .line 475
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 476
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_10

    .line 477
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 479
    :cond_10
    move v0, p2

    .local v0, i:I
    :goto_11
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1d

    .line 480
    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 482
    :cond_1d
    return-object p0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .registers 6
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 734
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    .line 735
    .local v1, remaining:I
    if-ne p1, p0, :cond_11

    .line 736
    if-nez v1, :cond_b

    move v2, v3

    .line 750
    :goto_a
    return v2

    .line 739
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 741
    :cond_11
    if-nez v1, :cond_21

    .line 742
    iget v2, p0, Ljava/nio/CharBuffer;->limit:I

    if-lez v2, :cond_1f

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_1f

    const/4 v2, 0x0

    goto :goto_a

    :cond_1f
    move v2, v3

    goto :goto_a

    .line 744
    :cond_21
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 745
    if-lez v1, :cond_33

    .line 746
    new-array v0, v1, [C

    .line 747
    .local v0, chars:[C
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 748
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    .end local v0           #chars:[C
    :cond_33
    move v2, v1

    .line 750
    goto :goto_a
.end method

.method public abstract slice()Ljava/nio/CharBuffer;
.end method

.method public abstract subSequence(II)Ljava/lang/CharSequence;
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/nio/CharBuffer;->limit:I

    iget v3, p0, Ljava/nio/CharBuffer;->position:I

    sub-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 639
    .local v1, result:Ljava/lang/StringBuilder;
    iget v0, p0, Ljava/nio/CharBuffer;->position:I

    .local v0, i:I
    :goto_c
    iget v2, p0, Ljava/nio/CharBuffer;->limit:I

    if-ge v0, v2, :cond_1a

    .line 640
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 639
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 642
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
