.class public Ljava/io/DataInputStream;
.super Ljava/io/FilterInputStream;
.source "DataInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private final scratch:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/DataInputStream;->scratch:[B

    .line 55
    return-void
.end method

.method private static decodeUTF(ILjava/io/DataInput;)Ljava/lang/String;
    .registers 5
    .parameter "utfSize"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 207
    new-array v0, p0, [B

    .line 208
    .local v0, buf:[B
    invoke-interface {p1, v0, v2, p0}, Ljava/io/DataInput;->readFully([BII)V

    .line 209
    new-array v1, p0, [C

    invoke-static {v0, v1, v2, p0}, Ljava/nio/charset/ModifiedUtf8;->decode([B[CII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final readUTF(Ljava/io/DataInput;)Ljava/lang/String;
    .registers 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    invoke-static {v0, p0}, Ljava/io/DataInputStream;->decodeUTF(ILjava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method decodeUTF(I)Ljava/lang/String;
    .registers 3
    .parameter "utfSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {p1, p0}, Ljava/io/DataInputStream;->decodeUTF(ILjava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final read([B)I
    .registers 5
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .registers 5
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public final readBoolean()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v1, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 102
    .local v0, temp:I
    if-gez v0, :cond_e

    .line 103
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 105
    :cond_e
    if-eqz v0, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public final readByte()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v1, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 110
    .local v0, temp:I
    if-gez v0, :cond_e

    .line 111
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 113
    :cond_e
    int-to-byte v1, v0

    return v1
.end method

.method public final readChar()C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .registers 4
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 130
    return-void
.end method

.method public final readFully([BII)V
    .registers 5
    .parameter "dst"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 134
    return-void
.end method

.method public final readInt()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljava/io/DataInputStream;->scratch:[B

    const/4 v2, 0x4

    invoke-static {v0, v1, v3, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 138
    iget-object v0, p0, Ljava/io/DataInputStream;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v3, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    return v0
.end method

.method public final readLine()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 144
    .local v1, line:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 146
    .local v0, foundTerminator:Z
    :cond_8
    :goto_8
    iget-object v3, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 147
    .local v2, nextByte:I
    sparse-switch v2, :sswitch_data_5c

    .line 167
    if-eqz v0, :cond_56

    .line 168
    iget-object p0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    .end local p0
    check-cast p0, Ljava/io/PushbackInputStream;

    invoke-virtual {p0, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1e
    return-object v3

    .line 149
    .restart local p0
    :sswitch_1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_29

    if-nez v0, :cond_29

    .line 150
    const/4 v3, 0x0

    goto :goto_1e

    .line 152
    :cond_29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1e

    .line 154
    :sswitch_2e
    if-eqz v0, :cond_3c

    .line 155
    iget-object p0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    .end local p0
    check-cast p0, Ljava/io/PushbackInputStream;

    invoke-virtual {p0, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1e

    .line 158
    .restart local p0
    :cond_3c
    const/4 v0, 0x1

    .line 160
    iget-object v3, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/io/PushbackInputStream;

    if-eq v3, v4, :cond_8

    .line 161
    new-instance v3, Ljava/io/PushbackInputStream;

    iget-object v4, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    goto :goto_8

    .line 165
    :sswitch_51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1e

    .line 171
    :cond_56
    int-to-char v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 147
    nop

    :sswitch_data_5c
    .sparse-switch
        -0x1 -> :sswitch_1f
        0xa -> :sswitch_51
        0xd -> :sswitch_2e
    .end sparse-switch
.end method

.method public final readLong()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 177
    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljava/io/DataInputStream;->scratch:[B

    const/16 v2, 0x8

    invoke-static {v0, v1, v3, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 178
    iget-object v0, p0, Ljava/io/DataInputStream;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v3, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->peekLong([BILjava/nio/ByteOrder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readShort()S
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 182
    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljava/io/DataInputStream;->scratch:[B

    const/4 v2, 0x2

    invoke-static {v0, v1, v3, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 183
    iget-object v0, p0, Ljava/io/DataInputStream;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v3, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    return v0
.end method

.method public final readUTF()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->decodeUTF(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsignedByte()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v1, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 188
    .local v0, temp:I
    if-gez v0, :cond_e

    .line 189
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 191
    :cond_e
    return v0
.end method

.method public final readUnsignedShort()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final skipBytes(I)I
    .registers 8
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    const/4 v2, 0x0

    .line 234
    .local v2, skipped:I
    :goto_1
    if-ge v2, p1, :cond_16

    iget-object v3, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    sub-int v4, p1, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .local v0, skip:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_16

    .line 235
    int-to-long v3, v2

    add-long/2addr v3, v0

    long-to-int v2, v3

    goto :goto_1

    .line 237
    .end local v0           #skip:J
    :cond_16
    return v2
.end method
