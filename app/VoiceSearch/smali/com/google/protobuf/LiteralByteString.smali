.class Lcom/google/protobuf/LiteralByteString;
.super Lcom/google/protobuf/ByteString;
.source "LiteralByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/LiteralByteString$1;,
        Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;
    }
.end annotation


# instance fields
.field protected final bytes:[B

.field private hash:I


# direct methods
.method constructor <init>([B)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/ByteString;-><init>()V

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/LiteralByteString;->hash:I

    .line 32
    iput-object p1, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    .line 33
    return-void
.end method


# virtual methods
.method public asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public byteAt(I)B
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public copyTo(Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 92
    return-void
.end method

.method protected copyToInternal([BIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    if-ne p1, p0, :cond_0

    move v1, v4

    .line 149
    :goto_0
    return v1

    .line 135
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/ByteString;

    if-nez v1, :cond_1

    move v1, v3

    .line 136
    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v2

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    if-eq v2, v1, :cond_2

    move v1, v3

    .line 140
    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v1

    if-nez v1, :cond_3

    move v1, v4

    .line 143
    goto :goto_0

    .line 146
    :cond_3
    instance-of v1, p1, Lcom/google/protobuf/LiteralByteString;

    if-eqz v1, :cond_4

    .line 147
    check-cast p1, Lcom/google/protobuf/LiteralByteString;

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v1

    invoke-virtual {p0, p1, v3, v1}, Lcom/google/protobuf/LiteralByteString;->equalsRange(Lcom/google/protobuf/LiteralByteString;II)Z

    move-result v1

    goto :goto_0

    .line 148
    :cond_4
    instance-of v1, p1, Lcom/google/protobuf/RopeByteString;

    if-eqz v1, :cond_5

    .line 149
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 151
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Has a new type of ByteString been created? Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method equalsRange(Lcom/google/protobuf/LiteralByteString;II)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-virtual {p1}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    add-int v0, p2, p3

    invoke-virtual {p1}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ran off end of other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    .line 178
    iget-object v1, p1, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    .line 179
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    add-int/2addr v2, p3

    .line 180
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v4

    add-int/2addr v4, p2

    move v7, v4

    move v4, v3

    move v3, v7

    .line 182
    :goto_0
    if-ge v4, v2, :cond_3

    .line 183
    aget-byte v5, v0, v4

    aget-byte v6, v1, v3

    if-eq v5, v6, :cond_2

    .line 184
    const/4 v0, 0x0

    .line 187
    :goto_1
    return v0

    .line 182
    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected getOffsetIntoBytes()I
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method protected getTreeDepth()I
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 205
    iget v0, p0, Lcom/google/protobuf/LiteralByteString;->hash:I

    .line 207
    if-nez v0, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v0

    .line 209
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/google/protobuf/LiteralByteString;->partialHash(III)I

    move-result v0

    .line 210
    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x1

    .line 213
    :cond_0
    iput v0, p0, Lcom/google/protobuf/LiteralByteString;->hash:I

    .line 215
    :cond_1
    return v0
.end method

.method protected isBalanced()Z
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public isValidUtf8()Z
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/protobuf/ByteString$ByteIterator;
    .locals 2

    .prologue
    .line 255
    new-instance v0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;-><init>(Lcom/google/protobuf/LiteralByteString;Lcom/google/protobuf/LiteralByteString$1;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->iterator()Lcom/google/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public newCodedInput()Lcom/google/protobuf/CodedInputStream;
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/CodedInputStream;->newInstance([BII)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public newInput()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 238
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method protected partialHash(III)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    .line 226
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int/2addr v1, p2

    add-int v2, v1, p3

    move v3, p1

    :goto_0
    if-ge v1, v2, :cond_0

    .line 228
    mul-int/lit8 v3, v3, 0x1f

    aget-byte v4, v0, v1

    add-int/2addr v3, v4

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    :cond_0
    return v3
.end method

.method protected partialIsValidUtf8(III)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v0

    add-int/2addr v0, p2

    .line 124
    iget-object v1, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    add-int v2, v0, p3

    invoke-static {p1, v1, v0, v2}, Lcom/google/protobuf/Utf8;->partialIsValidUtf8(I[BII)I

    move-result v0

    return v0
.end method

.method protected peekCachedHashCode()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/google/protobuf/LiteralByteString;->hash:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public substring(II)Lcom/google/protobuf/ByteString;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 53
    if-gez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Beginning index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 58
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    sub-int v0, p2, p1

    .line 62
    if-gez v0, :cond_2

    .line 63
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Beginning index larger than ending index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_2
    if-nez v0, :cond_3

    .line 70
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 75
    :goto_0
    return-object v0

    .line 72
    :cond_3
    new-instance v1, Lcom/google/protobuf/BoundedByteString;

    iget-object v2, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v3

    add-int/2addr v3, p1

    invoke-direct {v1, v2, v3, v0}, Lcom/google/protobuf/BoundedByteString;-><init>([BII)V

    move-object v0, v1

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 104
    return-void
.end method
