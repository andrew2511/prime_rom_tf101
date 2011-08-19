.class final Ljava/nio/ReadOnlyFloatArrayBuffer;
.super Ljava/nio/FloatArrayBuffer;
.source "ReadOnlyFloatArrayBuffer.java"


# direct methods
.method constructor <init>(I[FI)V
    .registers 4
    .parameter "capacity"
    .parameter "backingArray"
    .parameter "arrayOffset"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/FloatArrayBuffer;-><init>(I[FI)V

    .line 45
    return-void
.end method

.method static copy(Ljava/nio/FloatArrayBuffer;I)Ljava/nio/ReadOnlyFloatArrayBuffer;
    .registers 6
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 35
    new-instance v0, Ljava/nio/ReadOnlyFloatArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/FloatArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v3, p0, Ljava/nio/FloatArrayBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyFloatArrayBuffer;-><init>(I[FI)V

    .line 37
    .local v0, buf:Ljava/nio/ReadOnlyFloatArrayBuffer;
    iget v1, p0, Ljava/nio/FloatArrayBuffer;->limit:I

    iput v1, v0, Ljava/nio/ReadOnlyFloatArrayBuffer;->limit:I

    .line 38
    invoke-virtual {p0}, Ljava/nio/FloatArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadOnlyFloatArrayBuffer;->position:I

    .line 39
    iput p1, v0, Ljava/nio/ReadOnlyFloatArrayBuffer;->mark:I

    .line 40
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/FloatBuffer;
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, Ljava/nio/ReadOnlyFloatArrayBuffer;->duplicate()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/FloatBuffer;
    .registers 2

    .prologue
    .line 54
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public duplicate()Ljava/nio/FloatBuffer;
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Ljava/nio/ReadOnlyFloatArrayBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyFloatArrayBuffer;->copy(Ljava/nio/FloatArrayBuffer;I)Ljava/nio/ReadOnlyFloatArrayBuffer;

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

.method protected protectedArray()[F
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

.method public put(F)Ljava/nio/FloatBuffer;
    .registers 3
    .parameter "c"

    .prologue
    .line 84
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(IF)Ljava/nio/FloatBuffer;
    .registers 4
    .parameter "index"
    .parameter "c"

    .prologue
    .line 89
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .registers 3
    .parameter "buf"

    .prologue
    .line 94
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public final put([FII)Ljava/nio/FloatBuffer;
    .registers 5
    .parameter "src"
    .parameter "srcOffset"
    .parameter "byteCount"

    .prologue
    .line 99
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public slice()Ljava/nio/FloatBuffer;
    .registers 6

    .prologue
    .line 104
    new-instance v0, Ljava/nio/ReadOnlyFloatArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ReadOnlyFloatArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/ReadOnlyFloatArrayBuffer;->backingArray:[F

    iget v3, p0, Ljava/nio/ReadOnlyFloatArrayBuffer;->offset:I

    iget v4, p0, Ljava/nio/ReadOnlyFloatArrayBuffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyFloatArrayBuffer;-><init>(I[FI)V

    return-object v0
.end method
