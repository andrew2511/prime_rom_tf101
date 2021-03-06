.class public Lorg/apache/commons/codec/binary/BinaryCodec;
.super Ljava/lang/Object;
.source "BinaryCodec.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryDecoder;
.implements Lorg/apache/commons/codec/BinaryEncoder;


# static fields
.field private static final BITS:[I = null

.field private static final BIT_0:I = 0x1

.field private static final BIT_1:I = 0x2

.field private static final BIT_2:I = 0x4

.field private static final BIT_3:I = 0x8

.field private static final BIT_4:I = 0x10

.field private static final BIT_5:I = 0x20

.field private static final BIT_6:I = 0x40

.field private static final BIT_7:I = 0x80

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final EMPTY_CHAR_ARRAY:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 41
    new-array v0, v1, [C

    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_CHAR_ARRAY:[C

    .line 44
    new-array v0, v1, [B

    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 70
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    return-void

    nop

    :array_14
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromAscii([B)[B
    .registers 7
    .parameter "ascii"

    .prologue
    .line 194
    if-eqz p0, :cond_5

    array-length v4, p0

    if-nez v4, :cond_8

    .line 195
    :cond_5
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 210
    :goto_7
    return-object v4

    .line 198
    :cond_8
    array-length v4, p0

    shr-int/lit8 v4, v4, 0x3

    new-array v3, v4, [B

    .line 203
    .local v3, l_raw:[B
    const/4 v1, 0x0

    .local v1, ii:I
    array-length v4, p0

    const/4 v5, 0x1

    sub-int v2, v4, v5

    .local v2, jj:I
    :goto_12
    array-length v4, v3

    if-ge v1, v4, :cond_35

    .line 204
    const/4 v0, 0x0

    .local v0, bits:I
    :goto_16
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v4, v4

    if-ge v0, v4, :cond_30

    .line 205
    sub-int v4, v2, v0

    aget-byte v4, p0, v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_2d

    .line 206
    aget-byte v4, v3, v1

    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v5, v5, v0

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 204
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 203
    :cond_30
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_12

    .end local v0           #bits:I
    :cond_35
    move-object v4, v3

    .line 210
    goto :goto_7
.end method

.method public static fromAscii([C)[B
    .registers 7
    .parameter "ascii"

    .prologue
    .line 167
    if-eqz p0, :cond_5

    array-length v4, p0

    if-nez v4, :cond_8

    .line 168
    :cond_5
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 183
    :goto_7
    return-object v4

    .line 171
    :cond_8
    array-length v4, p0

    shr-int/lit8 v4, v4, 0x3

    new-array v3, v4, [B

    .line 176
    .local v3, l_raw:[B
    const/4 v1, 0x0

    .local v1, ii:I
    array-length v4, p0

    const/4 v5, 0x1

    sub-int v2, v4, v5

    .local v2, jj:I
    :goto_12
    array-length v4, v3

    if-ge v1, v4, :cond_35

    .line 177
    const/4 v0, 0x0

    .local v0, bits:I
    :goto_16
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v4, v4

    if-ge v0, v4, :cond_30

    .line 178
    sub-int v4, v2, v0

    aget-char v4, p0, v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_2d

    .line 179
    aget-byte v4, v3, v1

    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v5, v5, v0

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 177
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 176
    :cond_30
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_12

    .end local v0           #bits:I
    :cond_35
    move-object v4, v3

    .line 183
    goto :goto_7
.end method

.method public static toAsciiBytes([B)[B
    .registers 7
    .parameter "raw"

    .prologue
    .line 223
    if-eqz p0, :cond_5

    array-length v4, p0

    if-nez v4, :cond_8

    .line 224
    :cond_5
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 241
    :goto_7
    return-object v4

    .line 227
    :cond_8
    array-length v4, p0

    shl-int/lit8 v4, v4, 0x3

    new-array v3, v4, [B

    .line 232
    .local v3, l_ascii:[B
    const/4 v1, 0x0

    .local v1, ii:I
    array-length v4, v3

    const/4 v5, 0x1

    sub-int v2, v4, v5

    .local v2, jj:I
    :goto_12
    array-length v4, p0

    if-ge v1, v4, :cond_39

    .line 233
    const/4 v0, 0x0

    .local v0, bits:I
    :goto_16
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v4, v4

    if-ge v0, v4, :cond_34

    .line 234
    aget-byte v4, p0, v1

    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v5, v5, v0

    and-int/2addr v4, v5

    if-nez v4, :cond_2d

    .line 235
    sub-int v4, v2, v0

    const/16 v5, 0x30

    aput-byte v5, v3, v4

    .line 233
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 237
    :cond_2d
    sub-int v4, v2, v0

    const/16 v5, 0x31

    aput-byte v5, v3, v4

    goto :goto_2a

    .line 232
    :cond_34
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_12

    .end local v0           #bits:I
    :cond_39
    move-object v4, v3

    .line 241
    goto :goto_7
.end method

.method public static toAsciiChars([B)[C
    .registers 7
    .parameter "raw"

    .prologue
    .line 253
    if-eqz p0, :cond_5

    array-length v4, p0

    if-nez v4, :cond_8

    .line 254
    :cond_5
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_CHAR_ARRAY:[C

    .line 271
    :goto_7
    return-object v4

    .line 257
    :cond_8
    array-length v4, p0

    shl-int/lit8 v4, v4, 0x3

    new-array v3, v4, [C

    .line 262
    .local v3, l_ascii:[C
    const/4 v1, 0x0

    .local v1, ii:I
    array-length v4, v3

    const/4 v5, 0x1

    sub-int v2, v4, v5

    .local v2, jj:I
    :goto_12
    array-length v4, p0

    if-ge v1, v4, :cond_39

    .line 263
    const/4 v0, 0x0

    .local v0, bits:I
    :goto_16
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v4, v4

    if-ge v0, v4, :cond_34

    .line 264
    aget-byte v4, p0, v1

    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v5, v5, v0

    and-int/2addr v4, v5

    if-nez v4, :cond_2d

    .line 265
    sub-int v4, v2, v0

    const/16 v5, 0x30

    aput-char v5, v3, v4

    .line 263
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 267
    :cond_2d
    sub-int v4, v2, v0

    const/16 v5, 0x31

    aput-char v5, v3, v4

    goto :goto_2a

    .line 262
    :cond_34
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_12

    .end local v0           #bits:I
    :cond_39
    move-object v4, v3

    .line 271
    goto :goto_7
.end method

.method public static toAsciiString([B)Ljava/lang/String;
    .registers 3
    .parameter "raw"

    .prologue
    .line 283
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiChars([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "ascii"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 112
    if-nez p1, :cond_5

    .line 113
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 122
    .end local p1
    :goto_4
    return-object v0

    .line 115
    .restart local p1
    :cond_5
    instance-of v0, p1, [B

    if-eqz v0, :cond_12

    .line 116
    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([B)[B

    move-result-object v0

    goto :goto_4

    .line 118
    .restart local p1
    :cond_12
    instance-of v0, p1, [C

    if-eqz v0, :cond_1f

    .line 119
    check-cast p1, [C

    .end local p1
    check-cast p1, [C

    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    goto :goto_4

    .line 121
    .restart local p1
    :cond_1f
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 122
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    goto :goto_4

    .line 124
    .restart local p1
    :cond_2e
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "argument not a byte array"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode([B)[B
    .registers 3
    .parameter "ascii"

    .prologue
    .line 136
    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "raw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 95
    instance-of v0, p1, [B

    if-nez v0, :cond_c

    .line 96
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "argument not a byte array"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_c
    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiChars([B)[C

    move-result-object v0

    return-object v0
.end method

.method public encode([B)[B
    .registers 3
    .parameter "raw"

    .prologue
    .line 81
    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiBytes([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .registers 3
    .parameter "ascii"

    .prologue
    .line 148
    if-nez p1, :cond_5

    .line 149
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 151
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    goto :goto_4
.end method
