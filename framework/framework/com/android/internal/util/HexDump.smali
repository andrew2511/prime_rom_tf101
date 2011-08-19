.class public Lcom/android/internal/util/HexDump;
.super Ljava/lang/Object;
.source "HexDump.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpHexString([B)Ljava/lang/String;
    .registers 3
    .parameter "array"

    .prologue
    .line 25
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/HexDump;->dumpHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dumpHexString([BII)Ljava/lang/String;
    .registers 11
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .local v5, result:Ljava/lang/StringBuilder;
    const/16 v0, 0x10

    new-array v2, v0, [B

    .line 33
    .local v2, line:[B
    const/4 v1, 0x0

    .line 35
    .local v1, lineIndex:I
    const-string v0, "\n0x"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    move v0, p1

    .local v0, i:I
    move v7, v0

    .end local v0           #i:I
    .local v7, i:I
    move v0, v1

    .end local v1           #lineIndex:I
    .local v0, lineIndex:I
    move v1, v7

    .end local v7           #i:I
    .local v1, i:I
    :goto_1a
    add-int v3, p1, p2

    if-ge v1, v3, :cond_7c

    .line 40
    const/16 v3, 0x10

    if-ne v0, v3, :cond_b8

    .line 42
    const-string v0, " "

    .end local v0           #lineIndex:I
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const/4 v0, 0x0

    .local v0, j:I
    :goto_28
    const/16 v3, 0x10

    if-ge v0, v3, :cond_4a

    .line 46
    aget-byte v3, v2, v0

    const/16 v4, 0x20

    if-le v3, v4, :cond_44

    aget-byte v3, v2, v0

    const/16 v4, 0x7e

    if-ge v3, v4, :cond_44

    .line 48
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v0, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :goto_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 52
    :cond_44
    const-string v3, "."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 56
    :cond_4a
    const-string v0, "\n0x"

    .end local v0           #j:I
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const/4 v0, 0x0

    .local v0, lineIndex:I
    move v3, v0

    .line 61
    .end local v0           #lineIndex:I
    .local v3, lineIndex:I
    :goto_58
    aget-byte v0, p0, v1

    .line 62
    .local v0, b:B
    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    sget-object v4, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    ushr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v4, v4, v6

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    sget-object v4, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    and-int/lit8 v6, v0, 0xf

    aget-char v4, v4, v6

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    add-int/lit8 v4, v3, 0x1

    .end local v3           #lineIndex:I
    .local v4, lineIndex:I
    aput-byte v0, v2, v3

    .line 38
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    move v0, v4

    .end local v4           #lineIndex:I
    .local v0, lineIndex:I
    goto :goto_1a

    .line 69
    :cond_7c
    const/16 p0, 0x10

    if-eq v0, p0, :cond_b3

    .line 71
    .end local p0
    const/16 p0, 0x10

    sub-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x3

    .line 72
    .local p0, count:I
    add-int/lit8 p0, p0, 0x1

    .line 73
    const/4 p1, 0x0

    .end local v1           #i:I
    .end local p2
    .local p1, i:I
    :goto_88
    if-ge p1, p0, :cond_92

    .line 75
    const-string p2, " "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    add-int/lit8 p1, p1, 0x1

    goto :goto_88

    .line 78
    :cond_92
    const/4 p0, 0x0

    .end local p1           #i:I
    .local p0, i:I
    :goto_93
    if-ge p0, v0, :cond_b3

    .line 80
    aget-byte p1, v2, p0

    const/16 p2, 0x20

    if-le p1, p2, :cond_ad

    aget-byte p1, v2, p0

    const/16 p2, 0x7e

    if-ge p1, p2, :cond_ad

    .line 82
    new-instance p1, Ljava/lang/String;

    const/4 p2, 0x1

    invoke-direct {p1, v2, p0, p2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :goto_aa
    add-int/lit8 p0, p0, 0x1

    goto :goto_93

    .line 86
    :cond_ad
    const-string p1, "."

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_aa

    .line 91
    .end local p0           #i:I
    :cond_b3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .restart local v1       #i:I
    .local p0, array:[B
    .local p1, offset:I
    .restart local p2
    :cond_b8
    move v3, v0

    .end local v0           #lineIndex:I
    .restart local v3       #lineIndex:I
    goto :goto_58
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 7
    .parameter "hexString"

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 155
    .local v2, length:I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 157
    .local v0, buffer:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v2, :cond_28

    .line 159
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toByte(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toByte(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 157
    add-int/lit8 v1, v1, 0x2

    goto :goto_9

    .line 162
    :cond_28
    return-object v0
.end method

.method private static toByte(C)I
    .registers 5
    .parameter "c"

    .prologue
    const/16 v3, 0x61

    const/16 v2, 0x41

    const/16 v1, 0x30

    .line 145
    if-lt p0, v1, :cond_f

    const/16 v0, 0x39

    if-gt p0, v0, :cond_f

    sub-int v0, p0, v1

    .line 147
    :goto_e
    return v0

    .line 146
    :cond_f
    if-lt p0, v2, :cond_1a

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1a

    sub-int v0, p0, v2

    add-int/lit8 v0, v0, 0xa

    goto :goto_e

    .line 147
    :cond_1a
    if-lt p0, v3, :cond_25

    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    sub-int v0, p0, v3

    add-int/lit8 v0, v0, 0xa

    goto :goto_e

    .line 149
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toByteArray(B)[B
    .registers 3
    .parameter "b"

    .prologue
    .line 126
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 127
    .local v0, array:[B
    const/4 v1, 0x0

    aput-byte p0, v0, v1

    .line 128
    return-object v0
.end method

.method public static toByteArray(I)[B
    .registers 4
    .parameter "i"

    .prologue
    .line 133
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 135
    .local v0, array:[B
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 136
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 137
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 138
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 140
    return-object v0
.end method

.method public static toHexString(B)Ljava/lang/String;
    .registers 2
    .parameter "b"

    .prologue
    .line 96
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toByteArray(B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString(I)Ljava/lang/String;
    .registers 2
    .parameter "i"

    .prologue
    .line 121
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 3
    .parameter "array"

    .prologue
    .line 101
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .registers 10
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 106
    mul-int/lit8 v5, p2, 0x2

    new-array v1, v5, [C

    .line 108
    .local v1, buf:[C
    const/4 v2, 0x0

    .line 109
    .local v2, bufIndex:I
    move v4, p1

    .local v4, i:I
    move v3, v2

    .end local v2           #bufIndex:I
    .local v3, bufIndex:I
    :goto_7
    add-int v5, p1, p2

    if-ge v4, v5, :cond_26

    .line 111
    aget-byte v0, p0, v4

    .line 112
    .local v0, b:B
    add-int/lit8 v2, v3, 0x1

    .end local v3           #bufIndex:I
    .restart local v2       #bufIndex:I
    sget-object v5, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    ushr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    .line 113
    add-int/lit8 v3, v2, 0x1

    .end local v2           #bufIndex:I
    .restart local v3       #bufIndex:I
    sget-object v5, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    and-int/lit8 v6, v0, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v2

    .line 109
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 116
    .end local v0           #b:B
    :cond_26
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method
