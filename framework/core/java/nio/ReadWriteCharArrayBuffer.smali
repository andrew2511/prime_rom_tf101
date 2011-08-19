.class final Ljava/nio/ReadWriteCharArrayBuffer;
.super Ljava/nio/CharArrayBuffer;
.source "ReadWriteCharArrayBuffer.java"


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "capacity"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/nio/CharArrayBuffer;-><init>(I)V

    .line 48
    return-void
.end method

.method constructor <init>(I[CI)V
    .registers 4
    .parameter "capacity"
    .parameter "backingArray"
    .parameter "arrayOffset"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/CharArrayBuffer;-><init>(I[CI)V

    .line 52
    return-void
.end method

.method constructor <init>([C)V
    .registers 2
    .parameter "array"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/nio/CharArrayBuffer;-><init>([C)V

    .line 44
    return-void
.end method

.method static copy(Ljava/nio/CharArrayBuffer;I)Ljava/nio/ReadWriteCharArrayBuffer;
    .registers 6
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 34
    new-instance v0, Ljava/nio/ReadWriteCharArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/CharArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v3, p0, Ljava/nio/CharArrayBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteCharArrayBuffer;-><init>(I[CI)V

    .line 36
    .local v0, buf:Ljava/nio/ReadWriteCharArrayBuffer;
    iget v1, p0, Ljava/nio/CharArrayBuffer;->limit:I

    iput v1, v0, Ljava/nio/ReadWriteCharArrayBuffer;->limit:I

    .line 37
    invoke-virtual {p0}, Ljava/nio/CharArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    .line 38
    iput p1, v0, Ljava/nio/ReadWriteCharArrayBuffer;->mark:I

    .line 39
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/CharBuffer;
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyCharArrayBuffer;->copy(Ljava/nio/CharArrayBuffer;I)Ljava/nio/ReadOnlyCharArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/CharBuffer;
    .registers 6

    .prologue
    .line 61
    iget-object v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    iget v2, p0, Ljava/nio/ReadWriteCharArrayBuffer;->offset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ReadWriteCharArrayBuffer;->backingArray:[C

    iget v3, p0, Ljava/nio/ReadWriteCharArrayBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/ReadWriteCharArrayBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->limit:I

    iget v1, p0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    .line 63
    iget v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->capacity:I

    iput v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->limit:I

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->mark:I

    .line 65
    return-object p0
.end method

.method public duplicate()Ljava/nio/CharBuffer;
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadWriteCharArrayBuffer;->copy(Ljava/nio/CharArrayBuffer;I)Ljava/nio/ReadWriteCharArrayBuffer;

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

.method protected protectedArray()[C
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->backingArray:[C

    return-object v0
.end method

.method protected protectedArrayOffset()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->offset:I

    return v0
.end method

.method protected protectedHasArray()Z
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public put(C)Ljava/nio/CharBuffer;
    .registers 6
    .parameter "c"

    .prologue
    .line 95
    iget v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/ReadWriteCharArrayBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 96
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 98
    :cond_c
    iget-object v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/ReadWriteCharArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    add-int/2addr v1, v2

    aput-char p1, v0, v1

    .line 99
    return-object p0
.end method

.method public put(IC)Ljava/nio/CharBuffer;
    .registers 5
    .parameter "index"
    .parameter "c"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Ljava/nio/ReadWriteCharArrayBuffer;->checkIndex(I)V

    .line 105
    iget-object v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/ReadWriteCharArrayBuffer;->offset:I

    add-int/2addr v1, p1

    aput-char p2, v0, v1

    .line 106
    return-object p0
.end method

.method public put([CII)Ljava/nio/CharBuffer;
    .registers 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "charCount"

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/nio/ReadWriteCharArrayBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_c

    .line 112
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 114
    :cond_c
    iget-object v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/ReadWriteCharArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    .line 116
    return-object p0
.end method

.method public slice()Ljava/nio/CharBuffer;
    .registers 6

    .prologue
    .line 121
    new-instance v0, Ljava/nio/ReadWriteCharArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ReadWriteCharArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/ReadWriteCharArrayBuffer;->backingArray:[C

    iget v3, p0, Ljava/nio/ReadWriteCharArrayBuffer;->offset:I

    iget v4, p0, Ljava/nio/ReadWriteCharArrayBuffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteCharArrayBuffer;-><init>(I[CI)V

    return-object v0
.end method
