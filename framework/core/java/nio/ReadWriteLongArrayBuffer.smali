.class final Ljava/nio/ReadWriteLongArrayBuffer;
.super Ljava/nio/LongArrayBuffer;
.source "ReadWriteLongArrayBuffer.java"


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "capacity"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/nio/LongArrayBuffer;-><init>(I)V

    .line 48
    return-void
.end method

.method constructor <init>(I[JI)V
    .registers 4
    .parameter "capacity"
    .parameter "backingArray"
    .parameter "arrayOffset"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/LongArrayBuffer;-><init>(I[JI)V

    .line 52
    return-void
.end method

.method constructor <init>([J)V
    .registers 2
    .parameter "array"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/nio/LongArrayBuffer;-><init>([J)V

    .line 44
    return-void
.end method

.method static copy(Ljava/nio/LongArrayBuffer;I)Ljava/nio/ReadWriteLongArrayBuffer;
    .registers 6
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 34
    new-instance v0, Ljava/nio/ReadWriteLongArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/LongArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/LongArrayBuffer;->backingArray:[J

    iget v3, p0, Ljava/nio/LongArrayBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteLongArrayBuffer;-><init>(I[JI)V

    .line 36
    .local v0, buf:Ljava/nio/ReadWriteLongArrayBuffer;
    iget v1, p0, Ljava/nio/LongArrayBuffer;->limit:I

    iput v1, v0, Ljava/nio/ReadWriteLongArrayBuffer;->limit:I

    .line 37
    invoke-virtual {p0}, Ljava/nio/LongArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadWriteLongArrayBuffer;->position:I

    .line 38
    iput p1, v0, Ljava/nio/ReadWriteLongArrayBuffer;->mark:I

    .line 39
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/LongBuffer;
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Ljava/nio/ReadWriteLongArrayBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyLongArrayBuffer;->copy(Ljava/nio/LongArrayBuffer;I)Ljava/nio/ReadOnlyLongArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/LongBuffer;
    .registers 6

    .prologue
    .line 61
    iget-object v0, p0, Ljava/nio/ReadWriteLongArrayBuffer;->backingArray:[J

    iget v1, p0, Ljava/nio/ReadWriteLongArrayBuffer;->position:I

    iget v2, p0, Ljava/nio/ReadWriteLongArrayBuffer;->offset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ReadWriteLongArrayBuffer;->backingArray:[J

    iget v3, p0, Ljava/nio/ReadWriteLongArrayBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/ReadWriteLongArrayBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget v0, p0, Ljava/nio/ReadWriteLongArrayBuffer;->limit:I

    iget v1, p0, Ljava/nio/ReadWriteLongArrayBuffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/ReadWriteLongArrayBuffer;->position:I

    .line 63
    iget v0, p0, Ljava/nio/ReadWriteLongArrayBuffer;->capacity:I

    iput v0, p0, Ljava/nio/ReadWriteLongArrayBuffer;->limit:I

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/ReadWriteLongArrayBuffer;->mark:I

    .line 65
    return-object p0
.end method

.method public duplicate()Ljava/nio/LongBuffer;
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Ljava/nio/ReadWriteLongArrayBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadWriteLongArrayBuffer;->copy(Ljava/nio/LongArrayBuffer;I)Ljava/nio/ReadWriteLongArrayBuffer;

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

.method protected protectedArray()[J
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Ljava/nio/ReadWriteLongArrayBuffer;->backingArray:[J

    return-object v0
.end method

.method protected protectedArrayOffset()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Ljava/nio/ReadWriteLongArrayBuffer;->offset:I

    return v0
.end method

.method protected protectedHasArray()Z
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public put(IJ)Ljava/nio/LongBuffer;
    .registers 6
    .parameter "index"
    .parameter "c"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Ljava/nio/ReadWriteLongArrayBuffer;->checkIndex(I)V

    .line 105
    iget-object v0, p0, Ljava/nio/ReadWriteLongArrayBuffer;->backingArray:[J

    iget v1, p0, Ljava/nio/ReadWriteLongArrayBuffer;->offset:I

    add-int/2addr v1, p1

    aput-wide p2, v0, v1

    .line 106
    return-object p0
.end method

.method public put(J)Ljava/nio/LongBuffer;
    .registers 7
    .parameter "c"

    .prologue
    .line 95
    iget v0, p0, Ljava/nio/ReadWriteLongArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/ReadWriteLongArrayBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 96
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 98
    :cond_c
    iget-object v0, p0, Ljava/nio/ReadWriteLongArrayBuffer;->backingArray:[J

    iget v1, p0, Ljava/nio/ReadWriteLongArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteLongArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/ReadWriteLongArrayBuffer;->position:I

    add-int/2addr v1, v2

    aput-wide p1, v0, v1

    .line 99
    return-object p0
.end method

.method public put([JII)Ljava/nio/LongBuffer;
    .registers 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "longCount"

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/nio/ReadWriteLongArrayBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_c

    .line 112
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 114
    :cond_c
    iget-object v0, p0, Ljava/nio/ReadWriteLongArrayBuffer;->backingArray:[J

    iget v1, p0, Ljava/nio/ReadWriteLongArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteLongArrayBuffer;->position:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget v0, p0, Ljava/nio/ReadWriteLongArrayBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ReadWriteLongArrayBuffer;->position:I

    .line 116
    return-object p0
.end method

.method public slice()Ljava/nio/LongBuffer;
    .registers 6

    .prologue
    .line 121
    new-instance v0, Ljava/nio/ReadWriteLongArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ReadWriteLongArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/ReadWriteLongArrayBuffer;->backingArray:[J

    iget v3, p0, Ljava/nio/ReadWriteLongArrayBuffer;->offset:I

    iget v4, p0, Ljava/nio/ReadWriteLongArrayBuffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteLongArrayBuffer;-><init>(I[JI)V

    return-object v0
.end method
