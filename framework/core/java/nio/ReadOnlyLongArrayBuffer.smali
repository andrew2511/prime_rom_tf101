.class final Ljava/nio/ReadOnlyLongArrayBuffer;
.super Ljava/nio/LongArrayBuffer;
.source "ReadOnlyLongArrayBuffer.java"


# direct methods
.method constructor <init>(I[JI)V
    .registers 4
    .parameter "capacity"
    .parameter "backingArray"
    .parameter "arrayOffset"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/LongArrayBuffer;-><init>(I[JI)V

    .line 45
    return-void
.end method

.method static copy(Ljava/nio/LongArrayBuffer;I)Ljava/nio/ReadOnlyLongArrayBuffer;
    .registers 6
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 35
    new-instance v0, Ljava/nio/ReadOnlyLongArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/LongArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/LongArrayBuffer;->backingArray:[J

    iget v3, p0, Ljava/nio/LongArrayBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyLongArrayBuffer;-><init>(I[JI)V

    .line 37
    .local v0, buf:Ljava/nio/ReadOnlyLongArrayBuffer;
    iget v1, p0, Ljava/nio/LongArrayBuffer;->limit:I

    iput v1, v0, Ljava/nio/ReadOnlyLongArrayBuffer;->limit:I

    .line 38
    invoke-virtual {p0}, Ljava/nio/LongArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadOnlyLongArrayBuffer;->position:I

    .line 39
    iput p1, v0, Ljava/nio/ReadOnlyLongArrayBuffer;->mark:I

    .line 40
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/LongBuffer;
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, Ljava/nio/ReadOnlyLongArrayBuffer;->duplicate()Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/LongBuffer;
    .registers 2

    .prologue
    .line 54
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public duplicate()Ljava/nio/LongBuffer;
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Ljava/nio/ReadOnlyLongArrayBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyLongArrayBuffer;->copy(Ljava/nio/LongArrayBuffer;I)Ljava/nio/ReadOnlyLongArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method protected protectedArray()[J
    .registers 2

    .prologue
    .line 69
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method protected protectedArrayOffset()I
    .registers 2

    .prologue
    .line 74
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method protected protectedHasArray()Z
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public put(IJ)Ljava/nio/LongBuffer;
    .registers 5
    .parameter "index"
    .parameter "c"

    .prologue
    .line 89
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(J)Ljava/nio/LongBuffer;
    .registers 4
    .parameter "c"

    .prologue
    .line 84
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;
    .registers 3
    .parameter "buf"

    .prologue
    .line 94
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public final put([JII)Ljava/nio/LongBuffer;
    .registers 5
    .parameter "src"
    .parameter "srcOffset"
    .parameter "longCount"

    .prologue
    .line 99
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public slice()Ljava/nio/LongBuffer;
    .registers 6

    .prologue
    .line 104
    new-instance v0, Ljava/nio/ReadOnlyLongArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ReadOnlyLongArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/ReadOnlyLongArrayBuffer;->backingArray:[J

    iget v3, p0, Ljava/nio/ReadOnlyLongArrayBuffer;->offset:I

    iget v4, p0, Ljava/nio/ReadOnlyLongArrayBuffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyLongArrayBuffer;-><init>(I[JI)V

    return-object v0
.end method
