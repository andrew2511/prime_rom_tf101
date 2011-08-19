.class final Ljava/nio/CharSequenceAdapter;
.super Ljava/nio/CharBuffer;
.source "CharSequenceAdapter.java"


# instance fields
.field final sequence:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "chseq"

    .prologue
    .line 45
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/CharBuffer;-><init>(I)V

    .line 46
    iput-object p1, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    .line 47
    return-void
.end method

.method static copy(Ljava/nio/CharSequenceAdapter;)Ljava/nio/CharSequenceAdapter;
    .registers 3
    .parameter "other"

    .prologue
    .line 35
    new-instance v0, Ljava/nio/CharSequenceAdapter;

    iget-object v1, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Ljava/nio/CharSequenceAdapter;-><init>(Ljava/lang/CharSequence;)V

    .line 36
    .local v0, buf:Ljava/nio/CharSequenceAdapter;
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->limit:I

    iput v1, v0, Ljava/nio/CharSequenceAdapter;->limit:I

    .line 37
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->position:I

    iput v1, v0, Ljava/nio/CharSequenceAdapter;->position:I

    .line 38
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->mark:I

    iput v1, v0, Ljava/nio/CharSequenceAdapter;->mark:I

    .line 39
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/CharBuffer;
    .registers 2

    .prologue
    .line 51
    invoke-virtual {p0}, Ljava/nio/CharSequenceAdapter;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/CharBuffer;
    .registers 2

    .prologue
    .line 56
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public duplicate()Ljava/nio/CharBuffer;
    .registers 2

    .prologue
    .line 61
    invoke-static {p0}, Ljava/nio/CharSequenceAdapter;->copy(Ljava/nio/CharSequenceAdapter;)Ljava/nio/CharSequenceAdapter;

    move-result-object v0

    return-object v0
.end method

.method public get()C
    .registers 4

    .prologue
    .line 66
    iget v0, p0, Ljava/nio/CharSequenceAdapter;->position:I

    iget v1, p0, Ljava/nio/CharSequenceAdapter;->limit:I

    if-ne v0, v1, :cond_c

    .line 67
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 69
    :cond_c
    iget-object v0, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    iget v1, p0, Ljava/nio/CharSequenceAdapter;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/nio/CharSequenceAdapter;->position:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public get(I)C
    .registers 3
    .parameter "index"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Ljava/nio/CharSequenceAdapter;->checkIndex(I)V

    .line 75
    iget-object v0, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final get([CII)Ljava/nio/CharBuffer;
    .registers 7
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "charCount"

    .prologue
    .line 80
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 81
    invoke-virtual {p0}, Ljava/nio/CharSequenceAdapter;->remaining()I

    move-result v1

    if-le p3, v1, :cond_10

    .line 82
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 84
    :cond_10
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->position:I

    add-int v0, v1, p3

    .line 85
    .local v0, newPosition:I
    iget-object v1, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ljava/nio/CharSequenceAdapter;->position:I

    invoke-virtual {v1, v2, v0, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 86
    iput v0, p0, Ljava/nio/CharSequenceAdapter;->position:I

    .line 87
    return-object p0
.end method

.method public isDirect()Z
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 102
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protected protectedArray()[C
    .registers 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected protectedArrayOffset()I
    .registers 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected protectedHasArray()Z
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public put(C)Ljava/nio/CharBuffer;
    .registers 3
    .parameter "c"

    .prologue
    .line 122
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(IC)Ljava/nio/CharBuffer;
    .registers 4
    .parameter "index"
    .parameter "c"

    .prologue
    .line 127
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
    .line 137
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
    .line 132
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public slice()Ljava/nio/CharBuffer;
    .registers 5

    .prologue
    .line 142
    new-instance v0, Ljava/nio/CharSequenceAdapter;

    iget-object v1, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    iget v2, p0, Ljava/nio/CharSequenceAdapter;->position:I

    iget v3, p0, Ljava/nio/CharSequenceAdapter;->limit:I

    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/CharSequenceAdapter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 147
    invoke-virtual {p0, p1, p2}, Ljava/nio/CharSequenceAdapter;->checkStartEndRemaining(II)V

    .line 148
    invoke-static {p0}, Ljava/nio/CharSequenceAdapter;->copy(Ljava/nio/CharSequenceAdapter;)Ljava/nio/CharSequenceAdapter;

    move-result-object v0

    .line 149
    .local v0, result:Ljava/nio/CharSequenceAdapter;
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->position:I

    add-int/2addr v1, p1

    iput v1, v0, Ljava/nio/CharSequenceAdapter;->position:I

    .line 150
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->position:I

    add-int/2addr v1, p2

    iput v1, v0, Ljava/nio/CharSequenceAdapter;->limit:I

    .line 151
    return-object v0
.end method
