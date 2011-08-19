.class final Ljava/nio/ReadOnlyShortArrayBuffer;
.super Ljava/nio/ShortArrayBuffer;
.source "ReadOnlyShortArrayBuffer.java"


# direct methods
.method constructor <init>(I[SI)V
    .registers 4
    .parameter "capacity"
    .parameter "backingArray"
    .parameter "arrayOffset"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/ShortArrayBuffer;-><init>(I[SI)V

    .line 45
    return-void
.end method

.method static copy(Ljava/nio/ShortArrayBuffer;I)Ljava/nio/ReadOnlyShortArrayBuffer;
    .registers 6
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 35
    new-instance v0, Ljava/nio/ReadOnlyShortArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ShortArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v3, p0, Ljava/nio/ShortArrayBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyShortArrayBuffer;-><init>(I[SI)V

    .line 37
    .local v0, buf:Ljava/nio/ReadOnlyShortArrayBuffer;
    iget v1, p0, Ljava/nio/ShortArrayBuffer;->limit:I

    iput v1, v0, Ljava/nio/ReadOnlyShortArrayBuffer;->limit:I

    .line 38
    invoke-virtual {p0}, Ljava/nio/ShortArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadOnlyShortArrayBuffer;->position:I

    .line 39
    iput p1, v0, Ljava/nio/ReadOnlyShortArrayBuffer;->mark:I

    .line 40
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ShortBuffer;
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, Ljava/nio/ReadOnlyShortArrayBuffer;->duplicate()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ShortBuffer;
    .registers 2

    .prologue
    .line 54
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public duplicate()Ljava/nio/ShortBuffer;
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Ljava/nio/ReadOnlyShortArrayBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyShortArrayBuffer;->copy(Ljava/nio/ShortArrayBuffer;I)Ljava/nio/ReadOnlyShortArrayBuffer;

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

.method protected protectedArray()[S
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

.method public put(IS)Ljava/nio/ShortBuffer;
    .registers 4
    .parameter "index"
    .parameter "c"

    .prologue
    .line 94
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;
    .registers 3
    .parameter "buf"

    .prologue
    .line 84
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(S)Ljava/nio/ShortBuffer;
    .registers 3
    .parameter "c"

    .prologue
    .line 89
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public final put([SII)Ljava/nio/ShortBuffer;
    .registers 5
    .parameter "src"
    .parameter "srcOffset"
    .parameter "shortCount"

    .prologue
    .line 99
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public slice()Ljava/nio/ShortBuffer;
    .registers 6

    .prologue
    .line 104
    new-instance v0, Ljava/nio/ReadOnlyShortArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ReadOnlyShortArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/ReadOnlyShortArrayBuffer;->backingArray:[S

    iget v3, p0, Ljava/nio/ReadOnlyShortArrayBuffer;->offset:I

    iget v4, p0, Ljava/nio/ReadOnlyShortArrayBuffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyShortArrayBuffer;-><init>(I[SI)V

    return-object v0
.end method
