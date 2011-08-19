.class final Ljava/nio/ReadWriteDoubleArrayBuffer;
.super Ljava/nio/DoubleArrayBuffer;
.source "ReadWriteDoubleArrayBuffer.java"


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "capacity"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/nio/DoubleArrayBuffer;-><init>(I)V

    .line 49
    return-void
.end method

.method constructor <init>(I[DI)V
    .registers 4
    .parameter "capacity"
    .parameter "backingArray"
    .parameter "arrayOffset"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/DoubleArrayBuffer;-><init>(I[DI)V

    .line 53
    return-void
.end method

.method constructor <init>([D)V
    .registers 2
    .parameter "array"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/nio/DoubleArrayBuffer;-><init>([D)V

    .line 45
    return-void
.end method

.method static copy(Ljava/nio/DoubleArrayBuffer;I)Ljava/nio/ReadWriteDoubleArrayBuffer;
    .registers 6
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 35
    new-instance v0, Ljava/nio/ReadWriteDoubleArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/DoubleArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/DoubleArrayBuffer;->backingArray:[D

    iget v3, p0, Ljava/nio/DoubleArrayBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteDoubleArrayBuffer;-><init>(I[DI)V

    .line 37
    .local v0, buf:Ljava/nio/ReadWriteDoubleArrayBuffer;
    iget v1, p0, Ljava/nio/DoubleArrayBuffer;->limit:I

    iput v1, v0, Ljava/nio/ReadWriteDoubleArrayBuffer;->limit:I

    .line 38
    invoke-virtual {p0}, Ljava/nio/DoubleArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadWriteDoubleArrayBuffer;->position:I

    .line 39
    iput p1, v0, Ljava/nio/ReadWriteDoubleArrayBuffer;->mark:I

    .line 40
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyDoubleArrayBuffer;->copy(Ljava/nio/DoubleArrayBuffer;I)Ljava/nio/ReadOnlyDoubleArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/DoubleBuffer;
    .registers 6

    .prologue
    .line 62
    iget-object v0, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->backingArray:[D

    iget v1, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->position:I

    iget v2, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->offset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->backingArray:[D

    iget v3, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/ReadWriteDoubleArrayBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget v0, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->limit:I

    iget v1, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->position:I

    .line 64
    iget v0, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->capacity:I

    iput v0, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->limit:I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->mark:I

    .line 66
    return-object p0
.end method

.method public duplicate()Ljava/nio/DoubleBuffer;
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadWriteDoubleArrayBuffer;->copy(Ljava/nio/DoubleArrayBuffer;I)Ljava/nio/ReadWriteDoubleArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method protected protectedArray()[D
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->backingArray:[D

    return-object v0
.end method

.method protected protectedArrayOffset()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->offset:I

    return v0
.end method

.method protected protectedHasArray()Z
    .registers 2

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public put(D)Ljava/nio/DoubleBuffer;
    .registers 7
    .parameter "c"

    .prologue
    .line 96
    iget v0, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 97
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 99
    :cond_c
    iget-object v0, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->backingArray:[D

    iget v1, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->position:I

    add-int/2addr v1, v2

    aput-wide p1, v0, v1

    .line 100
    return-object p0
.end method

.method public put(ID)Ljava/nio/DoubleBuffer;
    .registers 6
    .parameter "index"
    .parameter "c"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Ljava/nio/ReadWriteDoubleArrayBuffer;->checkIndex(I)V

    .line 106
    iget-object v0, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->backingArray:[D

    iget v1, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->offset:I

    add-int/2addr v1, p1

    aput-wide p2, v0, v1

    .line 107
    return-object p0
.end method

.method public put([DII)Ljava/nio/DoubleBuffer;
    .registers 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "doubleCount"

    .prologue
    .line 112
    invoke-virtual {p0}, Ljava/nio/ReadWriteDoubleArrayBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_c

    .line 113
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 115
    :cond_c
    iget-object v0, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->backingArray:[D

    iget v1, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->position:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iget v0, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->position:I

    .line 117
    return-object p0
.end method

.method public slice()Ljava/nio/DoubleBuffer;
    .registers 6

    .prologue
    .line 122
    new-instance v0, Ljava/nio/ReadWriteDoubleArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ReadWriteDoubleArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->backingArray:[D

    iget v3, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->offset:I

    iget v4, p0, Ljava/nio/ReadWriteDoubleArrayBuffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteDoubleArrayBuffer;-><init>(I[DI)V

    return-object v0
.end method
