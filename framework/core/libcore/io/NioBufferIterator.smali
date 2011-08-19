.class public final Llibcore/io/NioBufferIterator;
.super Llibcore/io/BufferIterator;
.source "NioBufferIterator.java"


# instance fields
.field private final address:I

.field private position:I

.field private final size:I

.field private final swap:Z


# direct methods
.method constructor <init>(IIZ)V
    .registers 4
    .parameter "address"
    .parameter "size"
    .parameter "swap"

    .prologue
    .line 34
    invoke-direct {p0}, Llibcore/io/BufferIterator;-><init>()V

    .line 35
    iput p1, p0, Llibcore/io/NioBufferIterator;->address:I

    .line 36
    iput p2, p0, Llibcore/io/NioBufferIterator;->size:I

    .line 37
    iput-boolean p3, p0, Llibcore/io/NioBufferIterator;->swap:Z

    .line 38
    return-void
.end method


# virtual methods
.method public readByte()B
    .registers 4

    .prologue
    .line 54
    iget v1, p0, Llibcore/io/NioBufferIterator;->address:I

    iget v2, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr v1, v2

    invoke-static {v1}, Lorg/apache/harmony/luni/platform/OSMemory;->peekByte(I)B

    move-result v0

    .line 55
    .local v0, result:B
    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llibcore/io/NioBufferIterator;->position:I

    .line 56
    return v0
.end method

.method public readByteArray([BII)V
    .registers 6
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "byteCount"

    .prologue
    .line 49
    iget v0, p0, Llibcore/io/NioBufferIterator;->address:I

    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr v0, v1

    invoke-static {v0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/OSMemory;->peekByteArray(I[BII)V

    .line 50
    iget v0, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Llibcore/io/NioBufferIterator;->position:I

    .line 51
    return-void
.end method

.method public readInt()I
    .registers 4

    .prologue
    .line 60
    iget v1, p0, Llibcore/io/NioBufferIterator;->address:I

    iget v2, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr v1, v2

    iget-boolean v2, p0, Llibcore/io/NioBufferIterator;->swap:Z

    invoke-static {v1, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt(IZ)I

    move-result v0

    .line 61
    .local v0, result:I
    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Llibcore/io/NioBufferIterator;->position:I

    .line 62
    return v0
.end method

.method public readIntArray([III)V
    .registers 6
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "intCount"

    .prologue
    .line 66
    iget v0, p0, Llibcore/io/NioBufferIterator;->address:I

    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr v0, v1

    iget-boolean v1, p0, Llibcore/io/NioBufferIterator;->swap:Z

    invoke-static {v0, p1, p2, p3, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->peekIntArray(I[IIIZ)V

    .line 67
    iget v0, p0, Llibcore/io/NioBufferIterator;->position:I

    mul-int/lit8 v1, p3, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Llibcore/io/NioBufferIterator;->position:I

    .line 68
    return-void
.end method

.method public readShort()S
    .registers 4

    .prologue
    .line 71
    iget v1, p0, Llibcore/io/NioBufferIterator;->address:I

    iget v2, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr v1, v2

    iget-boolean v2, p0, Llibcore/io/NioBufferIterator;->swap:Z

    invoke-static {v1, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->peekShort(IZ)S

    move-result v0

    .line 72
    .local v0, result:S
    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Llibcore/io/NioBufferIterator;->position:I

    .line 73
    return v0
.end method

.method public seek(I)V
    .registers 2
    .parameter "offset"

    .prologue
    .line 41
    iput p1, p0, Llibcore/io/NioBufferIterator;->position:I

    .line 42
    return-void
.end method

.method public skip(I)V
    .registers 3
    .parameter "byteCount"

    .prologue
    .line 45
    iget v0, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr v0, p1

    iput v0, p0, Llibcore/io/NioBufferIterator;->position:I

    .line 46
    return-void
.end method
