.class public Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;
.super Ljava/lang/Object;
.source "ByteDataInputStream.java"


# instance fields
.field protected final in:[B

.field private isBigEndian:Z

.field private p:I


# direct methods
.method public constructor <init>([BZ)V
    .locals 1
    .parameter "in"
    .parameter "isBigEndian"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    .line 31
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    .line 32
    iput-boolean p2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->isBigEndian:Z

    .line 33
    return-void
.end method

.method public static readInt([BIZ)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    add-int/lit8 v0, p1, 0x4

    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 254
    const/4 v0, -0x1

    .line 270
    :goto_0
    return v0

    .line 257
    :cond_0
    if-eqz p2, :cond_1

    .line 259
    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    goto :goto_0

    .line 265
    :cond_1
    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v0, v2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static readShort([BI)I
    .locals 2
    .parameter "data"
    .parameter "offset"

    .prologue
    .line 305
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method public static readString([BII)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    if-gez p2, :cond_1

    .line 316
    array-length v0, p0

    :goto_0
    move v1, p1

    .line 319
    :goto_1
    aget-byte v2, p0, v1

    if-eqz v2, :cond_0

    add-int v2, p1, v0

    if-ge v1, v2, :cond_0

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 326
    :cond_0
    const/16 v0, 0x4e4

    :try_start_0
    invoke-static {p0, p1, v1, v0}, Lcom/mobipocket/common/parser/UnicodeUtils;->stringFromEncoding([BIII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 330
    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Ljava/lang/String;-><init>([BII)V

    goto :goto_2

    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method public static writeInt([BIZI)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    add-int/lit8 v0, p1, 0x4

    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 294
    :goto_0
    return-void

    .line 281
    :cond_0
    if-eqz p2, :cond_1

    .line 283
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p3, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 284
    add-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v2, p3, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 285
    add-int/lit8 v0, v1, 0x1

    ushr-int/lit8 v2, p3, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 286
    and-int/lit16 v1, p3, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_0

    .line 289
    :cond_1
    add-int/lit8 v0, p1, 0x1

    and-int/lit16 v1, p3, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 290
    add-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v2, p3, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 291
    add-int/lit8 v0, v1, 0x1

    ushr-int/lit8 v2, p3, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 292
    ushr-int/lit8 v1, p3, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_0
.end method


# virtual methods
.method public getAvailableLength()I
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    array-length v0, v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getByte(I)B
    .locals 1
    .parameter "index"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    return v0
.end method

.method public readBoolean()Z
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 91
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 92
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "this input stream reaches the end before reading one byte"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readBytes(I)[B
    .locals 4
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 103
    if-gez p1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    array-length v1, v1

    iget v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    sub-int p1, v1, v2

    .line 105
    :cond_0
    new-array v0, p1, [B

    .line 106
    .local v0, rep:[B
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    .line 108
    return-object v0
.end method

.method public readFromEncoding(III)Ljava/lang/String;
    .locals 1
    .parameter "index"
    .parameter "size"
    .parameter "encoding"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    invoke-static {v0, p1, p2, p3}, Lcom/mobipocket/common/parser/UnicodeUtils;->stringFromEncoding([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 154
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 155
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "this input stream reaches the end before reading 4 bytes"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_0
    iget-boolean v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->isBigEndian:Z

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v3, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v3, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v3, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int v0, v1, v2

    .line 169
    .local v0, rep:I
    :goto_0
    return v0

    .line 164
    .end local v0           #rep:I
    :cond_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v3, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v3, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v3, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x18

    add-int v0, v1, v2

    .restart local v0       #rep:I
    goto :goto_0
.end method

.method public readLong()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x20

    const/16 v11, 0x18

    const/16 v10, 0x10

    const/16 v9, 0x8

    const-wide/16 v7, 0xff

    .line 194
    iget v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 195
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "this input stream reaches the end before reading 8 bytes"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_0
    iget-boolean v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->isBigEndian:Z

    if-eqz v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v3, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v5, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v5, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v5, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v7

    shl-long/2addr v4, v12

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v5, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v7

    shl-long/2addr v4, v11

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v5, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v7

    shl-long/2addr v4, v10

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v5, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v7

    shl-long/2addr v4, v9

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v5, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v7

    add-long v0, v2, v4

    .line 217
    .local v0, rep:J
    :goto_0
    return-wide v0

    .line 208
    .end local v0           #rep:J
    :cond_1
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v3, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v7

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v5, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v7

    shl-long/2addr v4, v9

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v5, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v7

    shl-long/2addr v4, v10

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v5, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v7

    shl-long/2addr v4, v11

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v5, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v7

    shl-long/2addr v4, v12

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v5, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v5, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v5, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    add-long v0, v2, v4

    .restart local v0       #rep:J
    goto :goto_0
.end method

.method public readShort()S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 122
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 123
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "this input stream reaches the end before reading two bytes"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_0
    iget-boolean v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->isBigEndian:Z

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v1, v1, v2

    int-to-short v1, v1

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v3, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v2, v2, v3

    int-to-short v2, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    int-to-short v0, v1

    .line 133
    .local v0, rep:S
    :goto_0
    return v0

    .line 130
    .end local v0           #rep:S
    :cond_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v1, v1, v2

    int-to-short v1, v1

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v3, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    aget-byte v2, v2, v3

    int-to-short v2, v2

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    int-to-short v0, v1

    .restart local v0       #rep:S
    goto :goto_0
.end method

.method public readStopEncodedInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 417
    .line 420
    const/16 v0, 0x8

    .line 421
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readByte()B

    move-result v1

    move v3, v2

    move v5, v1

    move v1, v2

    move v2, v5

    .line 423
    :goto_0
    if-ge v1, v0, :cond_1

    .line 425
    and-int/lit16 v4, v2, 0x80

    if-nez v4, :cond_0

    .line 427
    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    .line 428
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readByte()B

    move-result v3

    .line 429
    add-int/lit8 v1, v1, 0x1

    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_0

    .line 433
    :cond_0
    shl-int/lit8 v0, v3, 0x7

    and-int/lit8 v1, v2, 0x7f

    or-int/2addr v0, v1

    .line 434
    :goto_1
    return v0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method public readString(I)Ljava/lang/String;
    .locals 3
    .parameter "maxSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 337
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 338
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this input stream reaches the end before reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    .line 340
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    sub-int/2addr v1, p1

    invoke-static {v0, v1, p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readStringUTF16BE(I)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 355
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    invoke-virtual {p0, v1, p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readStringUTF16BE(II)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, result:Ljava/lang/String;
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    .line 359
    return-object v0
.end method

.method public readStringUTF16BE(II)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 372
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    const v1, 0xfdea

    invoke-static {v0, p1, p2, v1}, Lcom/mobipocket/common/parser/UnicodeUtils;->stringFromEncoding([BIII)Ljava/lang/String;

    move-result-object v0

    .line 376
    return-object v0
.end method

.method public readUTF8String(II)Ljava/lang/String;
    .locals 2
    .parameter "index"
    .parameter "size"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    const v1, 0xfde9

    invoke-static {v0, p1, p2, v1}, Lcom/mobipocket/common/parser/UnicodeUtils;->stringFromEncoding([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readVoid(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 412
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    .line 413
    return-void
.end method

.method public readWesternString(II)Ljava/lang/String;
    .locals 2
    .parameter "index"
    .parameter "size"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    const/16 v1, 0x4e4

    invoke-static {v0, p1, p2, v1}, Lcom/mobipocket/common/parser/UnicodeUtils;->stringFromEncoding([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 43
    iput p1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    .line 44
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 86
    :goto_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    .line 87
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public writeBytes([B)V
    .locals 4
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 113
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 114
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this input stream reaches the end before writing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    .line 117
    return-void
.end method

.method public writeInt(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 174
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 175
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "this input stream reaches the end before writing 4 bytes"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->isBigEndian:Z

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 179
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 180
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 181
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 189
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 185
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 186
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 187
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public writeLong(J)V
    .locals 10
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0x18

    const/16 v7, 0x10

    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 222
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 223
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "this input stream reaches the end before writing 8 bytes"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->isBigEndian:Z

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 227
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    const/16 v2, 0x30

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 228
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    const/16 v2, 0x28

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 229
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    ushr-long v2, p1, v9

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 230
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    ushr-long v2, p1, v8

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 231
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    ushr-long v2, p1, v7

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 232
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    ushr-long v2, p1, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 233
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 245
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 237
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    ushr-long v2, p1, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 238
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    ushr-long v2, p1, v7

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 239
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    ushr-long v2, p1, v8

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 240
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    ushr-long v2, p1, v9

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 241
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    const/16 v2, 0x28

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 242
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    const/16 v2, 0x30

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 243
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public writeShort(S)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 138
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 139
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "this input stream reaches the end before writing 2 bytes"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->isBigEndian:Z

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 143
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 149
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 147
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->in:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->p:I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method
