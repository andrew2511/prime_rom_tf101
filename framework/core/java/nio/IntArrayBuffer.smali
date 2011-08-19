.class abstract Ljava/nio/IntArrayBuffer;
.super Ljava/nio/IntBuffer;
.source "IntArrayBuffer.java"


# instance fields
.field protected final backingArray:[I

.field protected final offset:I


# direct methods
.method constructor <init>(I)V
    .registers 4
    .parameter "capacity"

    .prologue
    .line 43
    new-array v0, p1, [I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/IntArrayBuffer;-><init>(I[II)V

    .line 44
    return-void
.end method

.method constructor <init>(I[II)V
    .registers 4
    .parameter "capacity"
    .parameter "backingArray"
    .parameter "offset"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/nio/IntBuffer;-><init>(I)V

    .line 48
    iput-object p2, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    .line 49
    iput p3, p0, Ljava/nio/IntArrayBuffer;->offset:I

    .line 50
    return-void
.end method

.method constructor <init>([I)V
    .registers 4
    .parameter "array"

    .prologue
    .line 39
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/IntArrayBuffer;-><init>(I[II)V

    .line 40
    return-void
.end method


# virtual methods
.method public final get()I
    .registers 5

    .prologue
    .line 54
    iget v0, p0, Ljava/nio/IntArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/IntArrayBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 55
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 57
    :cond_c
    iget-object v0, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v1, p0, Ljava/nio/IntArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/IntArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/IntArrayBuffer;->position:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    return v0
.end method

.method public final get(I)I
    .registers 4
    .parameter "index"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Ljava/nio/IntArrayBuffer;->checkIndex(I)V

    .line 63
    iget-object v0, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v1, p0, Ljava/nio/IntArrayBuffer;->offset:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public final get([III)Ljava/nio/IntBuffer;
    .registers 7
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "intCount"

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/nio/IntArrayBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_c

    .line 69
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 71
    :cond_c
    iget-object v0, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v1, p0, Ljava/nio/IntArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/IntArrayBuffer;->position:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget v0, p0, Ljava/nio/IntArrayBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/IntArrayBuffer;->position:I

    .line 73
    return-object p0
.end method

.method public final isDirect()Z
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 83
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method
