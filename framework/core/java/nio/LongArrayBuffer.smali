.class abstract Ljava/nio/LongArrayBuffer;
.super Ljava/nio/LongBuffer;
.source "LongArrayBuffer.java"


# instance fields
.field protected final backingArray:[J

.field protected final offset:I


# direct methods
.method constructor <init>(I)V
    .registers 4
    .parameter "capacity"

    .prologue
    .line 43
    new-array v0, p1, [J

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/LongArrayBuffer;-><init>(I[JI)V

    .line 44
    return-void
.end method

.method constructor <init>(I[JI)V
    .registers 4
    .parameter "capacity"
    .parameter "backingArray"
    .parameter "offset"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/nio/LongBuffer;-><init>(I)V

    .line 48
    iput-object p2, p0, Ljava/nio/LongArrayBuffer;->backingArray:[J

    .line 49
    iput p3, p0, Ljava/nio/LongArrayBuffer;->offset:I

    .line 50
    return-void
.end method

.method constructor <init>([J)V
    .registers 4
    .parameter "array"

    .prologue
    .line 39
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/LongArrayBuffer;-><init>(I[JI)V

    .line 40
    return-void
.end method


# virtual methods
.method public final get()J
    .registers 5

    .prologue
    .line 54
    iget v0, p0, Ljava/nio/LongArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/LongArrayBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 55
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 57
    :cond_c
    iget-object v0, p0, Ljava/nio/LongArrayBuffer;->backingArray:[J

    iget v1, p0, Ljava/nio/LongArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/LongArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/LongArrayBuffer;->position:I

    add-int/2addr v1, v2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final get(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Ljava/nio/LongArrayBuffer;->checkIndex(I)V

    .line 63
    iget-object v0, p0, Ljava/nio/LongArrayBuffer;->backingArray:[J

    iget v1, p0, Ljava/nio/LongArrayBuffer;->offset:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final get([JII)Ljava/nio/LongBuffer;
    .registers 7
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "longCount"

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/nio/LongArrayBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_c

    .line 69
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 71
    :cond_c
    iget-object v0, p0, Ljava/nio/LongArrayBuffer;->backingArray:[J

    iget v1, p0, Ljava/nio/LongArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/LongArrayBuffer;->position:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget v0, p0, Ljava/nio/LongArrayBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/LongArrayBuffer;->position:I

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
