.class final Ljava/nio/ReadWriteShortArrayBuffer;
.super Ljava/nio/ShortArrayBuffer;
.source "ReadWriteShortArrayBuffer.java"


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "capacity"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/nio/ShortArrayBuffer;-><init>(I)V

    .line 49
    return-void
.end method

.method constructor <init>(I[SI)V
    .registers 4
    .parameter "capacity"
    .parameter "backingArray"
    .parameter "arrayOffset"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/ShortArrayBuffer;-><init>(I[SI)V

    .line 54
    return-void
.end method

.method constructor <init>([S)V
    .registers 2
    .parameter "array"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/nio/ShortArrayBuffer;-><init>([S)V

    .line 45
    return-void
.end method

.method static copy(Ljava/nio/ShortArrayBuffer;I)Ljava/nio/ReadWriteShortArrayBuffer;
    .registers 6
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 35
    new-instance v0, Ljava/nio/ReadWriteShortArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ShortArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v3, p0, Ljava/nio/ShortArrayBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteShortArrayBuffer;-><init>(I[SI)V

    .line 37
    .local v0, buf:Ljava/nio/ReadWriteShortArrayBuffer;
    iget v1, p0, Ljava/nio/ShortArrayBuffer;->limit:I

    iput v1, v0, Ljava/nio/ReadWriteShortArrayBuffer;->limit:I

    .line 38
    invoke-virtual {p0}, Ljava/nio/ShortArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadWriteShortArrayBuffer;->position:I

    .line 39
    iput p1, v0, Ljava/nio/ReadWriteShortArrayBuffer;->mark:I

    .line 40
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ShortBuffer;
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyShortArrayBuffer;->copy(Ljava/nio/ShortArrayBuffer;I)Ljava/nio/ReadOnlyShortArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ShortBuffer;
    .registers 6

    .prologue
    .line 63
    iget-object v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->backingArray:[S

    iget v1, p0, Ljava/nio/ReadWriteShortArrayBuffer;->position:I

    iget v2, p0, Ljava/nio/ReadWriteShortArrayBuffer;->offset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ReadWriteShortArrayBuffer;->backingArray:[S

    iget v3, p0, Ljava/nio/ReadWriteShortArrayBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/ReadWriteShortArrayBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iget v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->limit:I

    iget v1, p0, Ljava/nio/ReadWriteShortArrayBuffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->position:I

    .line 65
    iget v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->capacity:I

    iput v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->limit:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->mark:I

    .line 67
    return-object p0
.end method

.method public duplicate()Ljava/nio/ShortBuffer;
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadWriteShortArrayBuffer;->copy(Ljava/nio/ShortArrayBuffer;I)Ljava/nio/ReadWriteShortArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method protected protectedArray()[S
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->backingArray:[S

    return-object v0
.end method

.method protected protectedArrayOffset()I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->offset:I

    return v0
.end method

.method protected protectedHasArray()Z
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public put(IS)Ljava/nio/ShortBuffer;
    .registers 5
    .parameter "index"
    .parameter "c"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Ljava/nio/ReadWriteShortArrayBuffer;->checkIndex(I)V

    .line 107
    iget-object v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->backingArray:[S

    iget v1, p0, Ljava/nio/ReadWriteShortArrayBuffer;->offset:I

    add-int/2addr v1, p1

    aput-short p2, v0, v1

    .line 108
    return-object p0
.end method

.method public put(S)Ljava/nio/ShortBuffer;
    .registers 6
    .parameter "c"

    .prologue
    .line 97
    iget v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/ReadWriteShortArrayBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 98
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 100
    :cond_c
    iget-object v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->backingArray:[S

    iget v1, p0, Ljava/nio/ReadWriteShortArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteShortArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/ReadWriteShortArrayBuffer;->position:I

    add-int/2addr v1, v2

    aput-short p1, v0, v1

    .line 101
    return-object p0
.end method

.method public put([SII)Ljava/nio/ShortBuffer;
    .registers 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "shortCount"

    .prologue
    .line 113
    invoke-virtual {p0}, Ljava/nio/ReadWriteShortArrayBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_c

    .line 114
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 116
    :cond_c
    iget-object v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->backingArray:[S

    iget v1, p0, Ljava/nio/ReadWriteShortArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteShortArrayBuffer;->position:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ReadWriteShortArrayBuffer;->position:I

    .line 118
    return-object p0
.end method

.method public slice()Ljava/nio/ShortBuffer;
    .registers 6

    .prologue
    .line 123
    new-instance v0, Ljava/nio/ReadWriteShortArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ReadWriteShortArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/ReadWriteShortArrayBuffer;->backingArray:[S

    iget v3, p0, Ljava/nio/ReadWriteShortArrayBuffer;->offset:I

    iget v4, p0, Ljava/nio/ReadWriteShortArrayBuffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteShortArrayBuffer;-><init>(I[SI)V

    return-object v0
.end method
