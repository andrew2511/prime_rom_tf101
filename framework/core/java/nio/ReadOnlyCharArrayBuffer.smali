.class final Ljava/nio/ReadOnlyCharArrayBuffer;
.super Ljava/nio/CharArrayBuffer;
.source "ReadOnlyCharArrayBuffer.java"


# direct methods
.method constructor <init>(I[CI)V
    .registers 4
    .parameter "capacity"
    .parameter "backingArray"
    .parameter "arrayOffset"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/CharArrayBuffer;-><init>(I[CI)V

    .line 45
    return-void
.end method

.method static copy(Ljava/nio/CharArrayBuffer;I)Ljava/nio/ReadOnlyCharArrayBuffer;
    .registers 6
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 35
    new-instance v0, Ljava/nio/ReadOnlyCharArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/CharArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v3, p0, Ljava/nio/CharArrayBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyCharArrayBuffer;-><init>(I[CI)V

    .line 37
    .local v0, buf:Ljava/nio/ReadOnlyCharArrayBuffer;
    iget v1, p0, Ljava/nio/CharArrayBuffer;->limit:I

    iput v1, v0, Ljava/nio/ReadOnlyCharArrayBuffer;->limit:I

    .line 38
    invoke-virtual {p0}, Ljava/nio/CharArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadOnlyCharArrayBuffer;->position:I

    .line 39
    iput p1, v0, Ljava/nio/ReadOnlyCharArrayBuffer;->mark:I

    .line 40
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/CharBuffer;
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, Ljava/nio/ReadOnlyCharArrayBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/CharBuffer;
    .registers 2

    .prologue
    .line 54
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public duplicate()Ljava/nio/CharBuffer;
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Ljava/nio/ReadOnlyCharArrayBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyCharArrayBuffer;->copy(Ljava/nio/CharArrayBuffer;I)Ljava/nio/ReadOnlyCharArrayBuffer;

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

.method protected protectedArray()[C
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

.method public put(C)Ljava/nio/CharBuffer;
    .registers 3
    .parameter "c"

    .prologue
    .line 84
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(IC)Ljava/nio/CharBuffer;
    .registers 4
    .parameter "index"
    .parameter "c"

    .prologue
    .line 89
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/String;II)Ljava/nio/CharBuffer;
    .registers 5
    .parameter "src"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 104
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public final put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    .registers 3
    .parameter "src"

    .prologue
    .line 99
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public final put([CII)Ljava/nio/CharBuffer;
    .registers 5
    .parameter "src"
    .parameter "srcOffset"
    .parameter "charCount"

    .prologue
    .line 94
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public slice()Ljava/nio/CharBuffer;
    .registers 6

    .prologue
    .line 109
    new-instance v0, Ljava/nio/ReadOnlyCharArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ReadOnlyCharArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/ReadOnlyCharArrayBuffer;->backingArray:[C

    iget v3, p0, Ljava/nio/ReadOnlyCharArrayBuffer;->offset:I

    iget v4, p0, Ljava/nio/ReadOnlyCharArrayBuffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyCharArrayBuffer;-><init>(I[CI)V

    return-object v0
.end method
