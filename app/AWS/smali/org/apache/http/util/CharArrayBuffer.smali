.class public final Lorg/apache/http/util/CharArrayBuffer;
.super Ljava/lang/Object;
.source "CharArrayBuffer.java"


# instance fields
.field private buffer:[C

.field private len:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "capacity"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-gez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer capacity may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    .line 61
    return-void
.end method

.method private expand(I)V
    .locals 4
    .parameter "newlen"

    .prologue
    const/4 v3, 0x0

    .line 64
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v0, v1, [C

    .line 65
    .local v0, newbuffer:[C
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iput-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    .line 67
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 3
    .parameter "ch"

    .prologue
    .line 160
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    add-int/lit8 v0, v1, 0x1

    .line 161
    .local v0, newlen:I
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 162
    invoke-direct {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    .line 164
    :cond_0
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    aput-char p1, v1, v2

    .line 165
    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 166
    return-void
.end method

.method public append(Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 233
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 5
    .parameter "str"

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 108
    const-string p1, "null"

    .line 110
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 111
    .local v1, strlen:I
    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    add-int v0, v2, v1

    .line 112
    .local v0, newlen:I
    iget-object v2, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v2, v2

    if-le v0, v2, :cond_1

    .line 113
    invoke-direct {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    .line 115
    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v4, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-virtual {p1, v2, v1, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 116
    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 117
    return-void
.end method

.method public append(Lorg/apache/http/util/ByteArrayBuffer;II)V
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 223
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->append([BII)V

    goto :goto_0
.end method

.method public append(Lorg/apache/http/util/CharArrayBuffer;)V
    .locals 3
    .parameter "b"

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p1, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    const/4 v1, 0x0

    iget v2, p1, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V

    goto :goto_0
.end method

.method public append(Lorg/apache/http/util/CharArrayBuffer;II)V
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p1, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V

    goto :goto_0
.end method

.method public append([BII)V
    .locals 6
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 183
    if-nez p1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    if-ltz p2, :cond_2

    array-length v4, p1

    if-gt p2, v4, :cond_2

    if-ltz p3, :cond_2

    add-int v4, p2, p3

    if-ltz v4, :cond_2

    add-int v4, p2, p3

    array-length v5, p1

    if-le v4, v5, :cond_3

    .line 188
    :cond_2
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 190
    :cond_3
    if-eqz p3, :cond_0

    .line 193
    iget v3, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 194
    .local v3, oldlen:I
    add-int v2, v3, p3

    .line 195
    .local v2, newlen:I
    iget-object v4, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v4, v4

    if-le v2, v4, :cond_4

    .line 196
    invoke-direct {p0, v2}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    .line 198
    :cond_4
    move v0, p2

    .local v0, i1:I
    move v1, v3

    .local v1, i2:I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 199
    iget-object v4, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    aput-char v5, v4, v1

    .line 198
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 201
    :cond_5
    iput v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    goto :goto_0
.end method

.method public append([CII)V
    .locals 3
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 82
    if-nez p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    if-ltz p2, :cond_2

    array-length v1, p1

    if-gt p2, v1, :cond_2

    if-ltz p3, :cond_2

    add-int v1, p2, p3

    if-ltz v1, :cond_2

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_3

    .line 87
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 89
    :cond_3
    if-eqz p3, :cond_0

    .line 92
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    add-int v0, v1, p3

    .line 93
    .local v0, newlen:I
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_4

    .line 94
    invoke-direct {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    .line 96
    :cond_4
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    goto :goto_0
.end method

.method public buffer()[C
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1
    .parameter "i"

    .prologue
    .line 267
    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 241
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 3
    .parameter "required"

    .prologue
    .line 308
    if-gtz p1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    sub-int v0, v1, v2

    .line 312
    .local v0, available:I
    if-le p1, v0, :cond_0

    .line 313
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    goto :goto_0
.end method

.method public indexOf(I)I
    .locals 2
    .parameter "ch"

    .prologue
    .line 404
    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    move-result v0

    return v0
.end method

.method public indexOf(III)I
    .locals 3
    .parameter "ch"
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    const/4 v2, -0x1

    .line 376
    if-gez p2, :cond_0

    .line 377
    const/4 p2, 0x0

    .line 379
    :cond_0
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    if-le p3, v1, :cond_1

    .line 380
    iget p3, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 382
    :cond_1
    if-le p2, p3, :cond_2

    move v1, v2

    .line 390
    :goto_0
    return v1

    .line 385
    :cond_2
    move v0, p2

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_4

    .line 386
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_3

    move v1, v0

    .line 387
    goto :goto_0

    .line 385
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v1, v2

    .line 390
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 351
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    return v0
.end method

.method public setLength(I)V
    .locals 1
    .parameter "len"

    .prologue
    .line 328
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 331
    :cond_1
    iput p1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 332
    return-void
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    .line 422
    if-gez p1, :cond_0

    .line 423
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 425
    :cond_0
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    if-le p2, v0, :cond_1

    .line 426
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 428
    :cond_1
    if-le p1, p2, :cond_2

    .line 429
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 431
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public substringTrimmed(II)Ljava/lang/String;
    .locals 3
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    .line 451
    if-gez p1, :cond_0

    .line 452
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 454
    :cond_0
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    if-le p2, v0, :cond_1

    .line 455
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 457
    :cond_1
    if-le p1, p2, :cond_2

    .line 458
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 460
    :cond_2
    :goto_0
    if-ge p1, p2, :cond_3

    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    aget-char v0, v0, p1

    invoke-static {v0}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 461
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 463
    :cond_3
    :goto_1
    if-le p2, p1, :cond_4

    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    const/4 v1, 0x1

    sub-int v1, p2, v1

    aget-char v0, v0, v1

    invoke-static {v0}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 464
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 466
    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toCharArray()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 249
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    new-array v0, v1, [C

    .line 250
    .local v0, b:[C
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    if-lez v1, :cond_0

    .line 251
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 470
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
