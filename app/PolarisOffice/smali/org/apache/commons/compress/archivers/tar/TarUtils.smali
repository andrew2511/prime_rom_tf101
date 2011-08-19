.class public Lorg/apache/commons/compress/archivers/tar/TarUtils;
.super Ljava/lang/Object;
.source "TarUtils.java"


# static fields
.field private static final BYTE_MASK:I = 0xff


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static computeCheckSum([B)J
    .locals 5
    .parameter "buf"

    .prologue
    .line 289
    const-wide/16 v1, 0x0

    .line 291
    .local v1, sum:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 292
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_0
    return-wide v1
.end method

.method private static exceptionMessage([BIIIB)Ljava/lang/String;
    .locals 4
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .parameter "current"
    .parameter "currentByte"

    .prologue
    .line 112
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 113
    .local v1, string:Ljava/lang/String;
    const-string v2, "\u0000"

    const-string v3, "{NUL}"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid byte "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " at offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sub-int v3, p3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " in \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, s:Ljava/lang/String;
    return-object v0
.end method

.method public static formatCheckSumOctalBytes(J[BII)I
    .locals 4
    .parameter "value"
    .parameter "buf"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 273
    const/4 v2, 0x2

    sub-int v0, p4, v2

    .line 274
    .local v0, idx:I
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    .line 276
    add-int/lit8 v1, v0, 0x1

    .end local v0           #idx:I
    .local v1, idx:I
    add-int v2, p3, v0

    const/4 v3, 0x0

    aput-byte v3, p2, v2

    .line 277
    add-int v2, p3, v1

    const/16 v3, 0x20

    aput-byte v3, p2, v2

    .line 279
    add-int v2, p3, p4

    return v2
.end method

.method public static formatLongOctalBytes(J[BII)I
    .locals 3
    .parameter "value"
    .parameter "buf"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 249
    const/4 v1, 0x1

    sub-int v0, p4, v1

    .line 251
    .local v0, idx:I
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    .line 252
    add-int v1, p3, v0

    const/16 v2, 0x20

    aput-byte v2, p2, v1

    .line 254
    add-int v1, p3, p4

    return v1
.end method

.method public static formatNameBytes(Ljava/lang/String;[BII)I
    .locals 3
    .parameter "name"
    .parameter "buf"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 162
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 163
    add-int v1, p2, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    :goto_1
    if-ge v0, p3, :cond_1

    .line 168
    add-int v1, p2, v0

    const/4 v2, 0x0

    aput-byte v2, p1, v1

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_1
    add-int v1, p2, p3

    return v1
.end method

.method public static formatOctalBytes(J[BII)I
    .locals 4
    .parameter "value"
    .parameter "buf"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 224
    const/4 v2, 0x2

    sub-int v0, p4, v2

    .line 225
    .local v0, idx:I
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    .line 227
    add-int/lit8 v1, v0, 0x1

    .end local v0           #idx:I
    .local v1, idx:I
    add-int v2, p3, v0

    const/16 v3, 0x20

    aput-byte v3, p2, v2

    .line 228
    add-int v2, p3, v1

    const/4 v3, 0x0

    aput-byte v3, p2, v2

    .line 230
    add-int v2, p3, p4

    return v2
.end method

.method public static formatUnsignedOctalString(J[BII)V
    .locals 10
    .parameter "value"
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v9, 0x30

    const-wide/16 v7, 0x0

    .line 185
    move v0, p4

    .line 186
    .local v0, remaining:I
    add-int/lit8 v0, v0, -0x1

    .line 187
    cmp-long v4, p0, v7

    if-nez v4, :cond_1

    .line 188
    add-int/lit8 v1, v0, -0x1

    .end local v0           #remaining:I
    .local v1, remaining:I
    add-int v4, p3, v0

    aput-byte v9, p2, v4

    move v0, v1

    .line 203
    .end local v1           #remaining:I
    .restart local v0       #remaining:I
    :cond_0
    :goto_0
    if-ltz v0, :cond_3

    .line 204
    add-int v4, p3, v0

    aput-byte v9, p2, v4

    .line 203
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 190
    :cond_1
    move-wide v2, p0

    .line 191
    .local v2, val:J
    :goto_1
    if-ltz v0, :cond_2

    cmp-long v4, v2, v7

    if-eqz v4, :cond_2

    .line 193
    add-int v4, p3, v0

    const-wide/16 v5, 0x7

    and-long/2addr v5, v2

    long-to-int v5, v5

    int-to-byte v5, v5

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 194
    const/4 v4, 0x3

    ushr-long/2addr v2, v4

    .line 191
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 197
    :cond_2
    cmp-long v4, v2, v7

    if-eqz v4, :cond_0

    .line 198
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {p0, p1}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " will not fit in octal number buffer of length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 206
    .end local v2           #val:J
    :cond_3
    return-void
.end method

.method public static parseName([BII)Ljava/lang/String;
    .locals 5
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 129
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 130
    .local v3, result:Ljava/lang/StringBuffer;
    add-int v1, p1, p2

    .line 132
    .local v1, end:I
    move v2, p1

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 133
    aget-byte v0, p0, v2

    .line 134
    .local v0, b:B
    if-nez v0, :cond_1

    .line 140
    .end local v0           #b:B
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 137
    .restart local v0       #b:B
    :cond_1
    and-int/lit16 v4, v0, 0xff

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static parseOctal([BII)J
    .locals 13
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v12, 0x30

    const/16 v10, 0x20

    const/4 v9, 0x1

    .line 52
    const-wide/16 v4, 0x0

    .line 53
    .local v4, result:J
    add-int v2, p1, p2

    .line 54
    .local v2, end:I
    move v6, p1

    .line 56
    .local v6, start:I
    const/4 v8, 0x2

    if-ge p2, v8, :cond_0

    .line 57
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Length "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " must be at least 2"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 60
    :cond_0
    const/4 v0, 0x1

    .line 61
    .local v0, allNUL:Z
    move v3, v6

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 62
    aget-byte v8, p0, v3

    if-eqz v8, :cond_2

    .line 63
    const/4 v0, 0x0

    .line 67
    :cond_1
    if-eqz v0, :cond_3

    .line 68
    const-wide/16 v8, 0x0

    .line 106
    :goto_1
    return-wide v8

    .line 61
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    :cond_3
    :goto_2
    if-ge v6, v2, :cond_4

    .line 73
    aget-byte v8, p0, v6

    if-ne v8, v10, :cond_4

    .line 74
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 82
    :cond_4
    sub-int v8, v2, v9

    aget-byte v7, p0, v8

    .line 83
    .local v7, trailer:B
    if-eqz v7, :cond_5

    if-ne v7, v10, :cond_9

    .line 84
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 90
    sub-int v8, v2, v9

    aget-byte v7, p0, v8

    .line 91
    if-eqz v7, :cond_6

    if-ne v7, v10, :cond_7

    .line 92
    :cond_6
    add-int/lit8 v2, v2, -0x1

    .line 95
    :cond_7
    :goto_3
    if-ge v6, v2, :cond_b

    .line 96
    aget-byte v1, p0, v6

    .line 98
    .local v1, currentByte:B
    if-lt v1, v12, :cond_8

    const/16 v8, 0x37

    if-le v1, v8, :cond_a

    .line 99
    :cond_8
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v6, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->exceptionMessage([BIIIB)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 86
    .end local v1           #currentByte:B
    :cond_9
    new-instance v8, Ljava/lang/IllegalArgumentException;

    sub-int v9, v2, v9

    invoke-static {p0, p1, p2, v9, v7}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->exceptionMessage([BIIIB)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 102
    .restart local v1       #currentByte:B
    :cond_a
    const/4 v8, 0x3

    shl-long v8, v4, v8

    sub-int v10, v1, v12

    int-to-long v10, v10

    add-long v4, v8, v10

    .line 95
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v1           #currentByte:B
    :cond_b
    move-wide v8, v4

    .line 106
    goto :goto_1
.end method
