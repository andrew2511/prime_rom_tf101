.class public final Lorg/apache/harmony/luni/platform/OSMemory;
.super Ljava/lang/Object;
.source "OSMemory.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native isLoaded(IJ)Z
.end method

.method public static native load(IJ)V
.end method

.method public static native memmove(IIJ)V
.end method

.method public static mmap(IJJLjava/nio/channels/FileChannel$MapMode;)I
    .registers 12
    .parameter "fd"
    .parameter "offset"
    .parameter "size"
    .parameter "mapMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/32 v3, 0x7fffffff

    const-wide/16 v1, 0x0

    .line 172
    cmp-long v0, p1, v1

    if-ltz v0, :cond_15

    cmp-long v0, p3, v1

    if-ltz v0, :cond_15

    cmp-long v0, p1, v3

    if-gtz v0, :cond_15

    cmp-long v0, p3, v3

    if-lez v0, :cond_38

    .line 173
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_38
    const/4 v5, 0x0

    .line 176
    .local v5, intMode:I
    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    if-ne p5, v0, :cond_46

    .line 177
    const/4 v5, 0x1

    :cond_3e
    :goto_3e
    move v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 181
    invoke-static/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/OSMemory;->mmapImpl(IJJI)I

    move-result v0

    return v0

    .line 178
    :cond_46
    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    if-ne p5, v0, :cond_3e

    .line 179
    const/4 v5, 0x2

    goto :goto_3e
.end method

.method private static native mmapImpl(IJJI)I
.end method

.method public static native msync(IJ)V
.end method

.method public static native munmap(IJ)V
.end method

.method public static native peekByte(I)B
.end method

.method public static native peekByteArray(I[BII)V
.end method

.method public static native peekCharArray(I[CIIZ)V
.end method

.method public static native peekDoubleArray(I[DIIZ)V
.end method

.method public static native peekFloatArray(I[FIIZ)V
.end method

.method public static native peekInt(IZ)I
.end method

.method public static peekInt([BILjava/nio/ByteOrder;)I
    .registers 6
    .parameter "src"
    .parameter "offset"
    .parameter "order"

    .prologue
    .line 47
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v1, :cond_27

    .line 48
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 p1, v0, 0x1

    .end local v0           #offset:I
    .restart local p1
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    or-int/2addr v1, v2

    move p1, v0

    .line 53
    .end local v0           #offset:I
    .restart local p1
    :goto_26
    return v1

    :cond_27
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    add-int/lit8 p1, v0, 0x1

    .end local v0           #offset:I
    .restart local p1
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    move p1, v0

    .end local v0           #offset:I
    .restart local p1
    goto :goto_26
.end method

.method public static native peekIntArray(I[IIIZ)V
.end method

.method public static native peekLong(IZ)J
.end method

.method public static peekLong([BILjava/nio/ByteOrder;)J
    .registers 12
    .parameter "src"
    .parameter "offset"
    .parameter "order"

    .prologue
    const-wide v7, 0xffffffffL

    const/16 v5, 0x20

    .line 61
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v3, :cond_58

    .line 62
    add-int/lit8 v2, p1, 0x1

    .end local p1
    .local v2, offset:I
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 p1, v2, 0x1

    .end local v2           #offset:I
    .restart local p1
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #offset:I
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 p1, v2, 0x1

    .end local v2           #offset:I
    .restart local p1
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x0

    or-int v0, v3, v4

    .line 66
    .local v0, h:I
    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #offset:I
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 p1, v2, 0x1

    .end local v2           #offset:I
    .restart local p1
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #offset:I
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x0

    or-int v1, v3, v4

    .line 70
    .local v1, l:I
    int-to-long v3, v0

    shl-long/2addr v3, v5

    int-to-long v5, v1

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    move p1, v2

    .line 80
    .end local v2           #offset:I
    .restart local p1
    :goto_57
    return-wide v3

    .line 72
    .end local v0           #h:I
    .end local v1           #l:I
    :cond_58
    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #offset:I
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    add-int/lit8 p1, v2, 0x1

    .end local v2           #offset:I
    .restart local p1
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #offset:I
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 p1, v2, 0x1

    .end local v2           #offset:I
    .restart local p1
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int v1, v3, v4

    .line 76
    .restart local v1       #l:I
    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #offset:I
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    add-int/lit8 p1, v2, 0x1

    .end local v2           #offset:I
    .restart local p1
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #offset:I
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int v0, v3, v4

    .line 80
    .restart local v0       #h:I
    int-to-long v3, v0

    shl-long/2addr v3, v5

    int-to-long v5, v1

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    move p1, v2

    .end local v2           #offset:I
    .restart local p1
    goto :goto_57
.end method

.method public static native peekLongArray(I[JIIZ)V
.end method

.method public static native peekShort(IZ)S
.end method

.method public static peekShort([BILjava/nio/ByteOrder;)S
    .registers 5
    .parameter "src"
    .parameter "offset"
    .parameter "order"

    .prologue
    .line 85
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_11

    .line 86
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 88
    :goto_10
    return v0

    :cond_11
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_10
.end method

.method public static native peekShortArray(I[SIIZ)V
.end method

.method public static native pokeByte(IB)V
.end method

.method public static native pokeByteArray(I[BII)V
.end method

.method public static native pokeCharArray(I[CIIZ)V
.end method

.method public static native pokeDoubleArray(I[DIIZ)V
.end method

.method public static native pokeFloatArray(I[FIIZ)V
.end method

.method public static native pokeInt(IIZ)V
.end method

.method public static pokeInt([BIILjava/nio/ByteOrder;)V
    .registers 6
    .parameter "dst"
    .parameter "offset"
    .parameter "value"
    .parameter "order"

    .prologue
    .line 93
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v1, :cond_28

    .line 94
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 95
    add-int/lit8 p1, v0, 0x1

    .end local v0           #offset:I
    .restart local p1
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 96
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 97
    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    move p1, v0

    .line 104
    .end local v0           #offset:I
    .restart local p1
    :goto_27
    return-void

    .line 99
    :cond_28
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 100
    add-int/lit8 p1, v0, 0x1

    .end local v0           #offset:I
    .restart local p1
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 101
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 102
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    move p1, v0

    .end local v0           #offset:I
    .restart local p1
    goto :goto_27
.end method

.method public static native pokeIntArray(I[IIIZ)V
.end method

.method public static native pokeLong(IJZ)V
.end method

.method public static pokeLong([BIJLjava/nio/ByteOrder;)V
    .registers 9
    .parameter "dst"
    .parameter "offset"
    .parameter "value"
    .parameter "order"

    .prologue
    const/16 v3, 0x20

    .line 107
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p4, v2, :cond_52

    .line 108
    shr-long v2, p2, v3

    long-to-int v0, v2

    .line 109
    .local v0, i:I
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .local v1, offset:I
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 110
    add-int/lit8 p1, v1, 0x1

    .end local v1           #offset:I
    .restart local p1
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 111
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .restart local v1       #offset:I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 112
    add-int/lit8 p1, v1, 0x1

    .end local v1           #offset:I
    .restart local p1
    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 113
    long-to-int v0, p2

    .line 114
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .restart local v1       #offset:I
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 115
    add-int/lit8 p1, v1, 0x1

    .end local v1           #offset:I
    .restart local p1
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 116
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .restart local v1       #offset:I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 117
    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    move p1, v1

    .line 130
    .end local v1           #offset:I
    .restart local p1
    :goto_51
    return-void

    .line 119
    .end local v0           #i:I
    :cond_52
    long-to-int v0, p2

    .line 120
    .restart local v0       #i:I
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .restart local v1       #offset:I
    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 121
    add-int/lit8 p1, v1, 0x1

    .end local v1           #offset:I
    .restart local p1
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 122
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .restart local v1       #offset:I
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 123
    add-int/lit8 p1, v1, 0x1

    .end local v1           #offset:I
    .restart local p1
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 124
    shr-long v2, p2, v3

    long-to-int v0, v2

    .line 125
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .restart local v1       #offset:I
    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 126
    add-int/lit8 p1, v1, 0x1

    .end local v1           #offset:I
    .restart local p1
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 127
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .restart local v1       #offset:I
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 128
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    move p1, v1

    .end local v1           #offset:I
    .restart local p1
    goto :goto_51
.end method

.method public static native pokeLongArray(I[JIIZ)V
.end method

.method public static native pokeShort(ISZ)V
.end method

.method public static pokeShort([BISLjava/nio/ByteOrder;)V
    .registers 6
    .parameter "dst"
    .parameter "offset"
    .parameter "value"
    .parameter "order"

    .prologue
    .line 133
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v1, :cond_16

    .line 134
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 135
    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    move p1, v0

    .line 140
    .end local v0           #offset:I
    .restart local p1
    :goto_15
    return-void

    .line 137
    :cond_16
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 138
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    move p1, v0

    .end local v0           #offset:I
    .restart local p1
    goto :goto_15
.end method

.method public static native pokeShortArray(I[SIIZ)V
.end method

.method public static native unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V
.end method

.method public static native unsafeBulkPut([BIILjava/lang/Object;IIZ)V
.end method
