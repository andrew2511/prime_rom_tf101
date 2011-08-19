.class final Ljava/nio/ReadWriteIntArrayBuffer;
.super Ljava/nio/IntArrayBuffer;
.source "ReadWriteIntArrayBuffer.java"


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "capacity"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/nio/IntArrayBuffer;-><init>(I)V

    .line 48
    return-void
.end method

.method constructor <init>(I[II)V
    .registers 4
    .parameter "capacity"
    .parameter "backingArray"
    .parameter "arrayOffset"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/IntArrayBuffer;-><init>(I[II)V

    .line 52
    return-void
.end method

.method constructor <init>([I)V
    .registers 2
    .parameter "array"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/nio/IntArrayBuffer;-><init>([I)V

    .line 44
    return-void
.end method

.method static copy(Ljava/nio/IntArrayBuffer;I)Ljava/nio/ReadWriteIntArrayBuffer;
    .registers 6
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 34
    new-instance v0, Ljava/nio/ReadWriteIntArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/IntArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v3, p0, Ljava/nio/IntArrayBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteIntArrayBuffer;-><init>(I[II)V

    .line 36
    .local v0, buf:Ljava/nio/ReadWriteIntArrayBuffer;
    iget v1, p0, Ljava/nio/IntArrayBuffer;->limit:I

    iput v1, v0, Ljava/nio/ReadWriteIntArrayBuffer;->limit:I

    .line 37
    invoke-virtual {p0}, Ljava/nio/IntArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadWriteIntArrayBuffer;->position:I

    .line 38
    iput p1, v0, Ljava/nio/ReadWriteIntArrayBuffer;->mark:I

    .line 39
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/IntBuffer;
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Ljava/nio/ReadWriteIntArrayBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyIntArrayBuffer;->copy(Ljava/nio/IntArrayBuffer;I)Ljava/nio/ReadOnlyIntArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/IntBuffer;
    .registers 6

    .prologue
    .line 61
    iget-object v0, p0, Ljava/nio/ReadWriteIntArrayBuffer;->backingArray:[I

    iget v1, p0, Ljava/nio/ReadWriteIntArrayBuffer;->position:I

    iget v2, p0, Ljava/nio/ReadWriteIntArrayBuffer;->offset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ReadWriteIntArrayBuffer;->backingArray:[I

    iget v3, p0, Ljava/nio/ReadWriteIntArrayBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/ReadWriteIntArrayBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget v0, p0, Ljava/nio/ReadWriteIntArrayBuffer;->limit:I

    iget v1, p0, Ljava/nio/ReadWriteIntArrayBuffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/ReadWriteIntArrayBuffer;->position:I

    .line 63
    iget v0, p0, Ljava/nio/ReadWriteIntArrayBuffer;->capacity:I

    iput v0, p0, Ljava/nio/ReadWriteIntArrayBuffer;->limit:I

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/ReadWriteIntArrayBuffer;->mark:I

    .line 65
    return-object p0
.end method

.method public duplicate()Ljava/nio/IntBuffer;
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Ljava/nio/ReadWriteIntArrayBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadWriteIntArrayBuffer;->copy(Ljava/nio/IntArrayBuffer;I)Ljava/nio/ReadWriteIntArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method protected protectedArray()[I
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Ljava/nio/ReadWriteIntArrayBuffer;->backingArray:[I

    return-object v0
.end method

.method protected protectedArrayOffset()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Ljava/nio/ReadWriteIntArrayBuffer;->offset:I

    return v0
.end method

.method protected protectedHasArray()Z
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public put(I)Ljava/nio/IntBuffer;
    .registers 6
    .parameter "c"

    .prologue
    .line 95
    iget v0, p0, Ljava/nio/ReadWriteIntArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/ReadWriteIntArrayBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 96
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 98
    :cond_c
    iget-object v0, p0, Ljava/nio/ReadWriteIntArrayBuffer;->backingArray:[I

    iget v1, p0, Ljava/nio/ReadWriteIntArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteIntArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/ReadWriteIntArrayBuffer;->position:I

    add-int/2addr v1, v2

    aput p1, v0, v1

    .line 99
    return-object p0
.end method

.method public put(II)Ljava/nio/IntBuffer;
    .registers 5
    .parameter "index"
    .parameter "c"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Ljava/nio/ReadWriteIntArrayBuffer;->checkIndex(I)V

    .line 105
    iget-object v0, p0, Ljava/nio/ReadWriteIntArrayBuffer;->backingArray:[I

    iget v1, p0, Ljava/nio/ReadWriteIntArrayBuffer;->offset:I

    add-int/2addr v1, p1

    aput p2, v0, v1

    .line 106
    return-object p0
.end method

.method public put([III)Ljava/nio/IntBuffer;
    .registers 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "intCount"

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/nio/ReadWriteIntArrayBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_c

    .line 112
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 114
    :cond_c
    iget-object v0, p0, Ljava/nio/ReadWriteIntArrayBuffer;->backingArray:[I

    iget v1, p0, Ljava/nio/ReadWriteIntArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteIntArrayBuffer;->position:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget v0, p0, Ljava/nio/ReadWriteIntArrayBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ReadWriteIntArrayBuffer;->position:I

    .line 116
    return-object p0
.end method

.method public slice()Ljava/nio/IntBuffer;
    .registers 6

    .prologue
    .line 121
    new-instance v0, Ljava/nio/ReadWriteIntArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ReadWriteIntArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/ReadWriteIntArrayBuffer;->backingArray:[I

    iget v3, p0, Ljava/nio/ReadWriteIntArrayBuffer;->offset:I

    iget v4, p0, Ljava/nio/ReadWriteIntArrayBuffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteIntArrayBuffer;-><init>(I[II)V

    return-object v0
.end method
