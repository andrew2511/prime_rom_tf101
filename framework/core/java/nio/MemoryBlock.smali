.class Ljava/nio/MemoryBlock;
.super Ljava/lang/Object;
.source "MemoryBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/MemoryBlock$1;,
        Ljava/nio/MemoryBlock$UnmanagedBlock;,
        Ljava/nio/MemoryBlock$NonMovableHeapBlock;,
        Ljava/nio/MemoryBlock$MemoryMappedBlock;
    }
.end annotation


# instance fields
.field protected address:I

.field protected final size:J


# direct methods
.method private constructor <init>(IJ)V
    .registers 4
    .parameter "address"
    .parameter "size"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Ljava/nio/MemoryBlock;->address:I

    .line 103
    iput-wide p2, p0, Ljava/nio/MemoryBlock;->size:J

    .line 104
    return-void
.end method

.method synthetic constructor <init>(IJLjava/nio/MemoryBlock$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/MemoryBlock;-><init>(IJ)V

    return-void
.end method

.method public static allocate(I)Ljava/nio/MemoryBlock;
    .registers 9
    .parameter "byteCount"

    .prologue
    .line 91
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    .line 92
    .local v7, runtime:Ldalvik/system/VMRuntime;
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v1, p0}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v2, v0

    .line 93
    .local v2, array:[B
    invoke-virtual {v7, v2}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v4

    long-to-int v3, v4

    .line 94
    .local v3, address:I
    new-instance v1, Ljava/nio/MemoryBlock$NonMovableHeapBlock;

    int-to-long v4, p0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Ljava/nio/MemoryBlock$NonMovableHeapBlock;-><init>([BIJLjava/nio/MemoryBlock$1;)V

    return-object v1
.end method

.method public static mmap(IJJLjava/nio/channels/FileChannel$MapMode;)Ljava/nio/MemoryBlock;
    .registers 11
    .parameter "fd"
    .parameter "start"
    .parameter "size"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 82
    cmp-long v1, p3, v3

    if-nez v1, :cond_d

    .line 84
    new-instance v1, Ljava/nio/MemoryBlock;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljava/nio/MemoryBlock;-><init>(IJ)V

    .line 87
    :goto_c
    return-object v1

    .line 86
    :cond_d
    invoke-static/range {p0 .. p5}, Lorg/apache/harmony/luni/platform/OSMemory;->mmap(IJJLjava/nio/channels/FileChannel$MapMode;)I

    move-result v0

    .line 87
    .local v0, address:I
    new-instance v1, Ljava/nio/MemoryBlock$MemoryMappedBlock;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p3, p4, v2}, Ljava/nio/MemoryBlock$MemoryMappedBlock;-><init>(IJLjava/nio/MemoryBlock$1;)V

    goto :goto_c
.end method

.method public static wrapFromJni(IJ)Ljava/nio/MemoryBlock;
    .registers 5
    .parameter "address"
    .parameter "byteCount"

    .prologue
    .line 98
    new-instance v0, Ljava/nio/MemoryBlock$UnmanagedBlock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/nio/MemoryBlock$UnmanagedBlock;-><init>(IJLjava/nio/MemoryBlock$1;)V

    return-object v0
.end method


# virtual methods
.method public free()V
    .registers 1

    .prologue
    .line 107
    return-void
.end method

.method public final getSize()J
    .registers 3

    .prologue
    .line 206
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->size:J

    return-wide v0
.end method

.method public final peekByte(I)B
    .registers 3
    .parameter "offset"

    .prologue
    .line 142
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0}, Lorg/apache/harmony/luni/platform/OSMemory;->peekByte(I)B

    move-result v0

    return v0
.end method

.method public final peekByteArray(I[BII)V
    .registers 6
    .parameter "offset"
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "byteCount"

    .prologue
    .line 146
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSMemory;->peekByteArray(I[BII)V

    .line 147
    return-void
.end method

.method public final peekCharArray(I[CIIZ)V
    .registers 7
    .parameter "offset"
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "charCount"
    .parameter "swap"

    .prologue
    .line 150
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Lorg/apache/harmony/luni/platform/OSMemory;->peekCharArray(I[CIIZ)V

    .line 151
    return-void
.end method

.method public final peekDoubleArray(I[DIIZ)V
    .registers 7
    .parameter "offset"
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "doubleCount"
    .parameter "swap"

    .prologue
    .line 154
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Lorg/apache/harmony/luni/platform/OSMemory;->peekDoubleArray(I[DIIZ)V

    .line 155
    return-void
.end method

.method public final peekFloatArray(I[FIIZ)V
    .registers 7
    .parameter "offset"
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "floatCount"
    .parameter "swap"

    .prologue
    .line 158
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Lorg/apache/harmony/luni/platform/OSMemory;->peekFloatArray(I[FIIZ)V

    .line 159
    return-void
.end method

.method public final peekInt(ILjava/nio/ByteOrder;)I
    .registers 5
    .parameter "offset"
    .parameter "order"

    .prologue
    .line 186
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    iget-boolean v1, p2, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt(IZ)I

    move-result v0

    return v0
.end method

.method public final peekIntArray(I[IIIZ)V
    .registers 7
    .parameter "offset"
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "intCount"
    .parameter "swap"

    .prologue
    .line 162
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Lorg/apache/harmony/luni/platform/OSMemory;->peekIntArray(I[IIIZ)V

    .line 163
    return-void
.end method

.method public final peekLong(ILjava/nio/ByteOrder;)J
    .registers 5
    .parameter "offset"
    .parameter "order"

    .prologue
    .line 194
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    iget-boolean v1, p2, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->peekLong(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final peekLongArray(I[JIIZ)V
    .registers 7
    .parameter "offset"
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "longCount"
    .parameter "swap"

    .prologue
    .line 166
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Lorg/apache/harmony/luni/platform/OSMemory;->peekLongArray(I[JIIZ)V

    .line 167
    return-void
.end method

.method public final peekShort(ILjava/nio/ByteOrder;)S
    .registers 5
    .parameter "offset"
    .parameter "order"

    .prologue
    .line 178
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    iget-boolean v1, p2, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->peekShort(IZ)S

    move-result v0

    return v0
.end method

.method public final peekShortArray(I[SIIZ)V
    .registers 7
    .parameter "offset"
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "shortCount"
    .parameter "swap"

    .prologue
    .line 170
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Lorg/apache/harmony/luni/platform/OSMemory;->peekShortArray(I[SIIZ)V

    .line 171
    return-void
.end method

.method public final pokeByte(IB)V
    .registers 4
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 110
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeByte(IB)V

    .line 111
    return-void
.end method

.method public final pokeByteArray(I[BII)V
    .registers 6
    .parameter "offset"
    .parameter "src"
    .parameter "srcOffset"
    .parameter "byteCount"

    .prologue
    .line 114
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeByteArray(I[BII)V

    .line 115
    return-void
.end method

.method public final pokeCharArray(I[CIIZ)V
    .registers 7
    .parameter "offset"
    .parameter "src"
    .parameter "srcOffset"
    .parameter "charCount"
    .parameter "swap"

    .prologue
    .line 118
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeCharArray(I[CIIZ)V

    .line 119
    return-void
.end method

.method public final pokeDoubleArray(I[DIIZ)V
    .registers 7
    .parameter "offset"
    .parameter "src"
    .parameter "srcOffset"
    .parameter "doubleCount"
    .parameter "swap"

    .prologue
    .line 122
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeDoubleArray(I[DIIZ)V

    .line 123
    return-void
.end method

.method public final pokeFloatArray(I[FIIZ)V
    .registers 7
    .parameter "offset"
    .parameter "src"
    .parameter "srcOffset"
    .parameter "floatCount"
    .parameter "swap"

    .prologue
    .line 126
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeFloatArray(I[FIIZ)V

    .line 127
    return-void
.end method

.method public final pokeInt(IILjava/nio/ByteOrder;)V
    .registers 6
    .parameter "offset"
    .parameter "value"
    .parameter "order"

    .prologue
    .line 182
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    iget-boolean v1, p3, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, p2, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeInt(IIZ)V

    .line 183
    return-void
.end method

.method public final pokeIntArray(I[IIIZ)V
    .registers 7
    .parameter "offset"
    .parameter "src"
    .parameter "srcOffset"
    .parameter "intCount"
    .parameter "swap"

    .prologue
    .line 130
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeIntArray(I[IIIZ)V

    .line 131
    return-void
.end method

.method public final pokeLong(IJLjava/nio/ByteOrder;)V
    .registers 7
    .parameter "offset"
    .parameter "value"
    .parameter "order"

    .prologue
    .line 190
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    iget-boolean v1, p4, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, p2, p3, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeLong(IJZ)V

    .line 191
    return-void
.end method

.method public final pokeLongArray(I[JIIZ)V
    .registers 7
    .parameter "offset"
    .parameter "src"
    .parameter "srcOffset"
    .parameter "longCount"
    .parameter "swap"

    .prologue
    .line 134
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeLongArray(I[JIIZ)V

    .line 135
    return-void
.end method

.method public final pokeShort(ISLjava/nio/ByteOrder;)V
    .registers 6
    .parameter "offset"
    .parameter "value"
    .parameter "order"

    .prologue
    .line 174
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    iget-boolean v1, p3, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, p2, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeShort(ISZ)V

    .line 175
    return-void
.end method

.method public final pokeShortArray(I[SIIZ)V
    .registers 7
    .parameter "offset"
    .parameter "src"
    .parameter "srcOffset"
    .parameter "shortCount"
    .parameter "swap"

    .prologue
    .line 138
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeShortArray(I[SIIZ)V

    .line 139
    return-void
.end method

.method public final toInt()I
    .registers 2

    .prologue
    .line 198
    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/nio/MemoryBlock;->address:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
