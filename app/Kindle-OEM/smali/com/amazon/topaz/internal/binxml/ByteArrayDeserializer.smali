.class public Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;
.super Lcom/amazon/topaz/internal/binxml/Deserializer;
.source "ByteArrayDeserializer.java"


# instance fields
.field private final bytes:[B

.field private index:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .parameter "bytes"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/amazon/topaz/internal/binxml/Deserializer;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->bytes:[B

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->index:I

    .line 34
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->index:I

    return v0
.end method

.method public readBytes()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/EndOfFileException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->readInt()I

    move-result v1

    .line 62
    .local v1, size:I
    new-array v0, v1, [B

    .line 63
    .local v0, b:[B
    iget-object v2, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->bytes:[B

    array-length v2, v2

    iget v3, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->index:I

    sub-int/2addr v2, v3

    if-ge v2, v1, :cond_0

    .line 65
    sget-object v2, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->readBytesEOF:Lcom/amazon/topaz/exception/EndOfFileException;

    throw v2

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->bytes:[B

    iget v3, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->index:I

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget v2, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->index:I

    array-length v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->index:I

    .line 71
    return-object v0
.end method

.method public readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/EndOfFileException;
        }
    .end annotation

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->bytes:[B

    .line 96
    .local v0, bytes:[B
    iget v4, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->index:I

    aget-byte v1, v0, v4

    .line 97
    .local v1, c:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    const/4 v4, 0x1

    move v2, v4

    .line 98
    .local v2, negative:Z
    :goto_0
    if-eqz v2, :cond_0

    .line 99
    iget v4, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->index:I

    aget-byte v1, v0, v4

    .line 101
    :cond_0
    and-int/lit8 v3, v1, 0x7f

    .line 102
    .local v3, value:I
    :goto_1
    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_2

    .line 103
    iget v4, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->index:I

    aget-byte v1, v0, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    shl-int/lit8 v4, v3, 0x7

    and-int/lit8 v5, v1, 0x7f

    or-int v3, v4, v5

    goto :goto_1

    .line 97
    .end local v2           #negative:Z
    .end local v3           #value:I
    :cond_1
    const/4 v4, 0x0

    move v2, v4

    goto :goto_0

    .line 106
    .restart local v2       #negative:Z
    .restart local v3       #value:I
    :cond_2
    if-eqz v2, :cond_3

    .line 107
    neg-int v3, v3

    .line 109
    :cond_3
    return v3

    .line 113
    .end local v0           #bytes:[B
    .end local v1           #c:I
    .end local v2           #negative:Z
    .end local v3           #value:I
    :catch_0
    move-exception v4

    sget-object v4, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->readIntEOF:Lcom/amazon/topaz/exception/EndOfFileException;

    throw v4
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/EndOfFileException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->readInt()I

    move-result v1

    .line 78
    .local v1, size:I
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->bytes:[B

    iget v3, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->index:I

    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->ENCODING_UTF8:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 79
    .local v0, retval:Ljava/lang/String;
    iget v2, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->index:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->index:I

    .line 81
    return-object v0
.end method

.method public resetAt(I)V
    .locals 1
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/EndOfFileException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->bytes:[B

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 45
    sget-object v0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->readBytesEOF:Lcom/amazon/topaz/exception/EndOfFileException;

    throw v0

    .line 47
    :cond_0
    iput p1, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->index:I

    .line 48
    return-void
.end method

.method public skip(I)V
    .locals 2
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/EndOfFileException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->index:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    .line 54
    sget-object v0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->readBytesEOF:Lcom/amazon/topaz/exception/EndOfFileException;

    throw v0

    .line 56
    :cond_0
    iget v0, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->index:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->index:I

    .line 57
    return-void
.end method

.method public skipSentinel(I)V
    .locals 4
    .parameter "expected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/BinXMLSentinelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->bytes:[B

    iget v2, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->index:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 123
    .local v0, c:I
    if-eq v0, p1, :cond_0

    .line 124
    new-instance v1, Lcom/amazon/topaz/exception/BinXMLSentinelException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected byte "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/topaz/exception/BinXMLSentinelException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_0
    return-void
.end method
