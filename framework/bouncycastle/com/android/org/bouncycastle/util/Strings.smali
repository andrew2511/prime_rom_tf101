.class public final Lcom/android/org/bouncycastle/util/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromUTF8ByteArray([B)Ljava/lang/String;
    .registers 15
    .parameter "bytes"

    .prologue
    const/16 v13, 0xf0

    const/16 v12, 0xe0

    const/16 v11, 0xc0

    .line 10
    const/4 v6, 0x0

    .line 11
    .local v6, i:I
    const/4 v7, 0x0

    .line 13
    .local v7, length:I
    :goto_8
    array-length v9, p0

    if-ge v6, v9, :cond_2d

    .line 15
    add-int/lit8 v7, v7, 0x1

    .line 16
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xf0

    if-ne v9, v13, :cond_18

    .line 19
    add-int/lit8 v7, v7, 0x1

    .line 20
    add-int/lit8 v6, v6, 0x4

    goto :goto_8

    .line 22
    :cond_18
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xe0

    if-ne v9, v12, :cond_21

    .line 24
    add-int/lit8 v6, v6, 0x3

    goto :goto_8

    .line 26
    :cond_21
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xc0

    if-ne v9, v11, :cond_2a

    .line 28
    add-int/lit8 v6, v6, 0x2

    goto :goto_8

    .line 32
    :cond_2a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 36
    :cond_2d
    new-array v5, v7, [C

    .line 38
    .local v5, cs:[C
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 41
    :goto_31
    array-length v9, p0

    if-ge v6, v9, :cond_d2

    .line 45
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xf0

    if-ne v9, v13, :cond_7a

    .line 47
    aget-byte v9, p0, v6

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x12

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v9, v10

    add-int/lit8 v10, v6, 0x2

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    add-int/lit8 v10, v6, 0x3

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    or-int v4, v9, v10

    .line 48
    .local v4, codePoint:I
    const/high16 v9, 0x1

    sub-int v0, v4, v9

    .line 49
    .local v0, U:I
    const v9, 0xd800

    shr-int/lit8 v10, v0, 0xa

    or-int/2addr v9, v10

    int-to-char v1, v9

    .line 50
    .local v1, W1:C
    const v9, 0xdc00

    and-int/lit16 v10, v0, 0x3ff

    or-int/2addr v9, v10

    int-to-char v2, v9

    .line 51
    .local v2, W2:C
    add-int/lit8 v8, v7, 0x1

    .end local v7           #length:I
    .local v8, length:I
    aput-char v1, v5, v7

    .line 52
    move v3, v2

    .line 53
    .local v3, ch:C
    add-int/lit8 v6, v6, 0x4

    move v7, v8

    .line 77
    .end local v0           #U:I
    .end local v1           #W1:C
    .end local v2           #W2:C
    .end local v4           #codePoint:I
    .end local v8           #length:I
    .restart local v7       #length:I
    :goto_74
    add-int/lit8 v8, v7, 0x1

    .end local v7           #length:I
    .restart local v8       #length:I
    aput-char v3, v5, v7

    move v7, v8

    .line 78
    .end local v8           #length:I
    .restart local v7       #length:I
    goto :goto_31

    .line 55
    .end local v3           #ch:C
    :cond_7a
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xe0

    if-ne v9, v12, :cond_9a

    .line 57
    aget-byte v9, p0, v6

    and-int/lit8 v9, v9, 0xf

    shl-int/lit8 v9, v9, 0xc

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    add-int/lit8 v10, v6, 0x2

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v9, v10

    int-to-char v3, v9

    .line 59
    .restart local v3       #ch:C
    add-int/lit8 v6, v6, 0x3

    goto :goto_74

    .line 61
    .end local v3           #ch:C
    :cond_9a
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xd0

    const/16 v10, 0xd0

    if-ne v9, v10, :cond_b3

    .line 63
    aget-byte v9, p0, v6

    and-int/lit8 v9, v9, 0x1f

    shl-int/lit8 v9, v9, 0x6

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v9, v10

    int-to-char v3, v9

    .line 64
    .restart local v3       #ch:C
    add-int/lit8 v6, v6, 0x2

    goto :goto_74

    .line 66
    .end local v3           #ch:C
    :cond_b3
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xc0

    if-ne v9, v11, :cond_ca

    .line 68
    aget-byte v9, p0, v6

    and-int/lit8 v9, v9, 0x1f

    shl-int/lit8 v9, v9, 0x6

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v9, v10

    int-to-char v3, v9

    .line 69
    .restart local v3       #ch:C
    add-int/lit8 v6, v6, 0x2

    goto :goto_74

    .line 73
    .end local v3           #ch:C
    :cond_ca
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xff

    int-to-char v3, v9

    .line 74
    .restart local v3       #ch:C
    add-int/lit8 v6, v6, 0x1

    goto :goto_74

    .line 80
    .end local v3           #ch:C
    :cond_d2
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([C)V

    return-object v9
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 9
    .parameter "input"
    .parameter "delimiter"

    .prologue
    .line 218
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 219
    .local v5, v:Ljava/util/Vector;
    const/4 v1, 0x1

    .line 222
    .local v1, moreTokens:Z
    :goto_6
    if-eqz v1, :cond_22

    .line 224
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 225
    .local v4, tokenLocation:I
    if-lez v4, :cond_1d

    .line 227
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, subString:Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 229
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    .line 233
    .end local v3           #subString:Ljava/lang/String;
    :cond_1d
    const/4 v1, 0x0

    .line 234
    invoke-virtual {v5, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_6

    .line 238
    .end local v4           #tokenLocation:I
    :cond_22
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v2, v6, [Ljava/lang/String;

    .line 240
    .local v2, res:[Ljava/lang/String;
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_29
    array-length v6, v2

    if-eq v0, v6, :cond_37

    .line 242
    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v2, v0

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 244
    :cond_37
    return-object v2
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .registers 5
    .parameter "string"

    .prologue
    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-array v0, v3, [B

    .line 206
    .local v0, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    array-length v3, v0

    if-eq v2, v3, :cond_14

    .line 208
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 210
    .local v1, ch:C
    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 213
    .end local v1           #ch:C
    :cond_14
    return-object v0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "string"

    .prologue
    const/16 v5, 0x41

    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, changed:Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 184
    .local v2, chars:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    array-length v4, v2

    if-eq v3, v4, :cond_1e

    .line 186
    aget-char v0, v2, v3

    .line 187
    .local v0, ch:C
    if-gt v5, v0, :cond_1b

    const/16 v4, 0x5a

    if-lt v4, v0, :cond_1b

    .line 189
    const/4 v1, 0x1

    .line 190
    sub-int v4, v0, v5

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 184
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 194
    .end local v0           #ch:C
    :cond_1e
    if-eqz v1, :cond_26

    .line 196
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    .line 199
    :goto_25
    return-object v4

    :cond_26
    move-object v4, p0

    goto :goto_25
.end method

.method public static toUTF8ByteArray(Ljava/lang/String;)[B
    .registers 2
    .parameter "string"

    .prologue
    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static toUTF8ByteArray([C)[B
    .registers 10
    .parameter "string"

    .prologue
    .line 90
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 91
    .local v2, bOut:Ljava/io/ByteArrayOutputStream;
    move-object v3, p0

    .line 92
    .local v3, c:[C
    const/4 v6, 0x0

    .line 94
    .local v6, i:I
    :goto_7
    array-length v7, v3

    if-ge v6, v7, :cond_98

    .line 96
    aget-char v4, v3, v6

    .line 98
    .local v4, ch:C
    const/16 v7, 0x80

    if-ge v4, v7, :cond_16

    .line 100
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 138
    :goto_13
    add-int/lit8 v6, v6, 0x1

    .line 139
    goto :goto_7

    .line 102
    :cond_16
    const/16 v7, 0x800

    if-ge v4, v7, :cond_29

    .line 104
    shr-int/lit8 v7, v4, 0x6

    or-int/lit16 v7, v7, 0xc0

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 105
    and-int/lit8 v7, v4, 0x3f

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_13

    .line 108
    :cond_29
    const v7, 0xd800

    if-lt v4, v7, :cond_7f

    const v7, 0xdfff

    if-gt v4, v7, :cond_7f

    .line 112
    add-int/lit8 v7, v6, 0x1

    array-length v8, v3

    if-lt v7, v8, :cond_40

    .line 114
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "invalid UTF-16 codepoint"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 116
    :cond_40
    move v0, v4

    .line 117
    .local v0, W1:C
    add-int/lit8 v6, v6, 0x1

    aget-char v4, v3, v6

    .line 118
    move v1, v4

    .line 121
    .local v1, W2:C
    const v7, 0xdbff

    if-le v0, v7, :cond_53

    .line 123
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "invalid UTF-16 codepoint"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 125
    :cond_53
    and-int/lit16 v7, v0, 0x3ff

    shl-int/lit8 v7, v7, 0xa

    and-int/lit16 v8, v1, 0x3ff

    or-int/2addr v7, v8

    const/high16 v8, 0x1

    add-int v5, v7, v8

    .line 126
    .local v5, codePoint:I
    shr-int/lit8 v7, v5, 0x12

    or-int/lit16 v7, v7, 0xf0

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 127
    shr-int/lit8 v7, v5, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 128
    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 129
    and-int/lit8 v7, v5, 0x3f

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_13

    .line 133
    .end local v0           #W1:C
    .end local v1           #W2:C
    .end local v5           #codePoint:I
    :cond_7f
    shr-int/lit8 v7, v4, 0xc

    or-int/lit16 v7, v7, 0xe0

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 134
    shr-int/lit8 v7, v4, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 135
    and-int/lit8 v7, v4, 0x3f

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_13

    .line 141
    .end local v4           #ch:C
    :cond_98
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "string"

    .prologue
    const/16 v5, 0x61

    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, changed:Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 155
    .local v2, chars:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    array-length v4, v2

    if-eq v3, v4, :cond_1e

    .line 157
    aget-char v0, v2, v3

    .line 158
    .local v0, ch:C
    if-gt v5, v0, :cond_1b

    const/16 v4, 0x7a

    if-lt v4, v0, :cond_1b

    .line 160
    const/4 v1, 0x1

    .line 161
    sub-int v4, v0, v5

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 155
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 165
    .end local v0           #ch:C
    :cond_1e
    if-eqz v1, :cond_26

    .line 167
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    .line 170
    :goto_25
    return-object v4

    :cond_26
    move-object v4, p0

    goto :goto_25
.end method
