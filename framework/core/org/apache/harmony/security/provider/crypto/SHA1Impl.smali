.class public Lorg/apache/harmony/security/provider/crypto/SHA1Impl;
.super Ljava/lang/Object;
.source "SHA1Impl.java"

# interfaces
.implements Lorg/apache/harmony/security/provider/crypto/SHA1_Data;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeHash([I)V
    .registers 16
    .parameter "arrW"

    .prologue
    const/16 v14, 0x55

    const/16 v13, 0x54

    const/16 v12, 0x53

    const/16 v11, 0x52

    const/16 v10, 0x50

    .line 76
    aget v0, p0, v11

    .line 77
    .local v0, a:I
    aget v1, p0, v12

    .line 78
    .local v1, b:I
    aget v2, p0, v13

    .line 79
    .local v2, c:I
    aget v3, p0, v14

    .line 80
    .local v3, d:I
    const/16 v7, 0x56

    aget v4, p0, v7

    .line 92
    .local v4, e:I
    const/16 v5, 0x10

    .local v5, t:I
    :goto_18
    if-ge v5, v10, :cond_3f

    .line 94
    const/4 v7, 0x3

    sub-int v7, v5, v7

    aget v7, p0, v7

    const/16 v8, 0x8

    sub-int v8, v5, v8

    aget v8, p0, v8

    xor-int/2addr v7, v8

    const/16 v8, 0xe

    sub-int v8, v5, v8

    aget v8, p0, v8

    xor-int/2addr v7, v8

    const/16 v8, 0x10

    sub-int v8, v5, v8

    aget v8, p0, v8

    xor-int v6, v7, v8

    .line 95
    .local v6, temp:I
    shl-int/lit8 v7, v6, 0x1

    ushr-int/lit8 v8, v6, 0x1f

    or-int/2addr v7, v8

    aput v7, p0, v5

    .line 92
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 98
    .end local v6           #temp:I
    :cond_3f
    const/4 v5, 0x0

    :goto_40
    const/16 v7, 0x14

    if-ge v5, v7, :cond_66

    .line 100
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    and-int v8, v1, v2

    xor-int/lit8 v9, v1, -0x1

    and-int/2addr v9, v3

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    aget v8, p0, v5

    add-int/2addr v8, v4

    const v9, 0x5a827999

    add-int/2addr v8, v9

    add-int v6, v7, v8

    .line 103
    .restart local v6       #temp:I
    move v4, v3

    .line 104
    move v3, v2

    .line 105
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    .line 106
    move v1, v0

    .line 107
    move v0, v6

    .line 98
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    .line 109
    .end local v6           #temp:I
    :cond_66
    const/16 v5, 0x14

    :goto_68
    const/16 v7, 0x28

    if-ge v5, v7, :cond_8b

    .line 111
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v1, v2

    xor-int/2addr v8, v3

    add-int/2addr v7, v8

    aget v8, p0, v5

    add-int/2addr v8, v4

    const v9, 0x6ed9eba1

    add-int/2addr v8, v9

    add-int v6, v7, v8

    .line 112
    .restart local v6       #temp:I
    move v4, v3

    .line 113
    move v3, v2

    .line 114
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    .line 115
    move v1, v0

    .line 116
    move v0, v6

    .line 109
    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    .line 118
    .end local v6           #temp:I
    :cond_8b
    const/16 v5, 0x28

    :goto_8d
    const/16 v7, 0x3c

    if-ge v5, v7, :cond_b5

    .line 120
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    and-int v8, v1, v2

    and-int v9, v1, v3

    or-int/2addr v8, v9

    and-int v9, v2, v3

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    aget v8, p0, v5

    add-int/2addr v8, v4

    const v9, -0x70e44324

    add-int/2addr v8, v9

    add-int v6, v7, v8

    .line 122
    .restart local v6       #temp:I
    move v4, v3

    .line 123
    move v3, v2

    .line 124
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    .line 125
    move v1, v0

    .line 126
    move v0, v6

    .line 118
    add-int/lit8 v5, v5, 0x1

    goto :goto_8d

    .line 128
    .end local v6           #temp:I
    :cond_b5
    const/16 v5, 0x3c

    :goto_b7
    if-ge v5, v10, :cond_d8

    .line 130
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v1, v2

    xor-int/2addr v8, v3

    add-int/2addr v7, v8

    aget v8, p0, v5

    add-int/2addr v8, v4

    const v9, -0x359d3e2a

    add-int/2addr v8, v9

    add-int v6, v7, v8

    .line 131
    .restart local v6       #temp:I
    move v4, v3

    .line 132
    move v3, v2

    .line 133
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    .line 134
    move v1, v0

    .line 135
    move v0, v6

    .line 128
    add-int/lit8 v5, v5, 0x1

    goto :goto_b7

    .line 138
    .end local v6           #temp:I
    :cond_d8
    aget v7, p0, v11

    add-int/2addr v7, v0

    aput v7, p0, v11

    .line 139
    aget v7, p0, v12

    add-int/2addr v7, v1

    aput v7, p0, v12

    .line 140
    aget v7, p0, v13

    add-int/2addr v7, v2

    aput v7, p0, v13

    .line 141
    aget v7, p0, v14

    add-int/2addr v7, v3

    aput v7, p0, v14

    .line 142
    const/16 v7, 0x56

    aget v8, p0, v7

    add-int/2addr v8, v4

    aput v8, p0, v7

    .line 143
    return-void
.end method

.method static updateHash([I[BII)V
    .registers 10
    .parameter "intArray"
    .parameter "byteInput"
    .parameter "fromByte"
    .parameter "toByte"

    .prologue
    .line 174
    const/16 v0, 0x51

    aget v2, p0, v0

    .line 175
    .local v2, index:I
    move v1, p2

    .line 179
    .local v1, i:I
    shr-int/lit8 v3, v2, 0x2

    .line 180
    .local v3, wordIndex:I
    and-int/lit8 v0, v2, 0x3

    .line 182
    .local v0, byteIndex:I
    const/16 v4, 0x51

    add-int/2addr v2, p3

    sub-int p2, v2, p2

    add-int/lit8 p2, p2, 0x1

    and-int/lit8 p2, p2, 0x3f

    aput p2, p0, v4

    .line 189
    .end local v2           #index:I
    .end local p2
    if-eqz v0, :cond_ab

    move p2, v0

    .end local v0           #byteIndex:I
    .local p2, byteIndex:I
    move v0, v1

    .line 191
    .end local v1           #i:I
    .local v0, i:I
    :goto_18
    if-gt v0, p3, :cond_30

    const/4 v1, 0x4

    if-ge p2, v1, :cond_30

    .line 192
    aget v1, p0, v3

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    const/4 v4, 0x3

    sub-int/2addr v4, p2

    shl-int/lit8 v4, v4, 0x3

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    aput v1, p0, v3

    .line 193
    add-int/lit8 p2, p2, 0x1

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 195
    :cond_30
    const/4 v1, 0x4

    if-ne p2, v1, :cond_a9

    .line 196
    add-int/lit8 v1, v3, 0x1

    .line 197
    .end local v3           #wordIndex:I
    .local v1, wordIndex:I
    const/16 v2, 0x10

    if-ne v1, v2, :cond_3d

    .line 199
    invoke-static {p0}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    .line 200
    const/4 v1, 0x0

    .line 203
    :cond_3d
    :goto_3d
    if-le v0, p3, :cond_43

    move p0, p2

    .end local p2           #byteIndex:I
    .local p0, byteIndex:I
    move p1, v0

    .end local v0           #i:I
    .local p1, i:I
    move p2, v1

    .line 244
    .end local v1           #wordIndex:I
    .end local p3
    .local p2, wordIndex:I
    :goto_42
    return-void

    .restart local v0       #i:I
    .restart local v1       #wordIndex:I
    .local p0, intArray:[I
    .local p1, byteInput:[B
    .local p2, byteIndex:I
    .restart local p3
    :cond_43
    move v3, v1

    .line 210
    .end local v1           #wordIndex:I
    .restart local v3       #wordIndex:I
    :goto_44
    sub-int v1, p3, v0

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v2, v1, 0x2

    .line 211
    .local v2, maxWord:I
    const/4 v1, 0x0

    .local v1, k:I
    :goto_4b
    if-ge v1, v2, :cond_7e

    .line 213
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v0, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    aput v4, p0, v3

    .line 217
    add-int/lit8 v0, v0, 0x4

    .line 218
    add-int/lit8 v3, v3, 0x1

    .line 220
    const/16 v4, 0x10

    if-ge v3, v4, :cond_79

    .line 211
    :goto_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 223
    :cond_79
    invoke-static {p0}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    .line 224
    const/4 v3, 0x0

    goto :goto_76

    .line 230
    :cond_7e
    sub-int/2addr p3, v0

    add-int/lit8 p3, p3, 0x1

    .line 231
    .local p3, nBytes:I
    if-eqz p3, :cond_a3

    .line 233
    aget-byte v1, p1, v0

    .end local v1           #k:I
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 235
    .local v1, w:I
    const/4 v2, 0x1

    if-eq p3, v2, :cond_a7

    .line 236
    .end local v2           #maxWord:I
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 237
    const/4 v2, 0x2

    if-eq p3, v2, :cond_a7

    .line 238
    add-int/lit8 p3, v0, 0x2

    aget-byte p1, p1, p3

    .end local p1           #byteInput:[B
    .end local p3           #nBytes:I
    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v1

    .line 241
    .end local v1           #w:I
    .local p1, w:I
    :goto_a1
    aput p1, p0, v3

    .end local p1           #w:I
    :cond_a3
    move p0, p2

    .end local p2           #byteIndex:I
    .local p0, byteIndex:I
    move p1, v0

    .end local v0           #i:I
    .local p1, i:I
    move p2, v3

    .line 244
    .end local v3           #wordIndex:I
    .local p2, wordIndex:I
    goto :goto_42

    .restart local v0       #i:I
    .restart local v1       #w:I
    .restart local v3       #wordIndex:I
    .local p0, intArray:[I
    .local p1, byteInput:[B
    .local p2, byteIndex:I
    .restart local p3       #nBytes:I
    :cond_a7
    move p1, v1

    .end local v1           #w:I
    .local p1, w:I
    goto :goto_a1

    .local p1, byteInput:[B
    .local p3, toByte:I
    :cond_a9
    move v1, v3

    .end local v3           #wordIndex:I
    .local v1, wordIndex:I
    goto :goto_3d

    .end local p2           #byteIndex:I
    .local v0, byteIndex:I
    .local v1, i:I
    .restart local v3       #wordIndex:I
    :cond_ab
    move p2, v0

    .end local v0           #byteIndex:I
    .restart local p2       #byteIndex:I
    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto :goto_44
.end method
