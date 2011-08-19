.class public Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;
.super Ljava/lang/Object;
.source "ISO9796d1Encoding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static inverse:[B

.field private static shadows:[B


# instance fields
.field private bitSize:I

.field private engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private padBits:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x10

    .line 19
    new-array v0, v1, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    .line 21
    new-array v0, v1, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->inverse:[B

    return-void

    .line 19
    nop

    :array_12
    .array-data 0x1
        0xet
        0x3t
        0x5t
        0x8t
        0x9t
        0x4t
        0x2t
        0xft
        0x0t
        0xdt
        0xbt
        0x6t
        0x7t
        0xat
        0xct
        0x1t
    .end array-data

    .line 21
    :array_1e
    .array-data 0x1
        0x8t
        0xft
        0x6t
        0x1t
        0x5t
        0x2t
        0xbt
        0xct
        0x3t
        0x4t
        0xdt
        0xat
        0xet
        0x9t
        0x0t
        0x7t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 3
    .parameter "cipher"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    .line 32
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 33
    return-void
.end method

.method private decodeBlock([BII)[B
    .registers 21
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    move-object v12, v0

    move-object v0, v12

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v4

    .line 203
    .local v4, block:[B
    const/4 v9, 0x1

    .line 204
    .local v9, r:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    move v12, v0

    add-int/lit8 v12, v12, 0xd

    div-int/lit8 v10, v12, 0x10

    .line 206
    .local v10, t:I
    array-length v12, v4

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    aget-byte v12, v4, v12

    and-int/lit8 v12, v12, 0xf

    const/4 v13, 0x6

    if-eq v12, v13, :cond_2c

    .line 208
    new-instance v12, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v13, "invalid forcing byte in block"

    invoke-direct {v12, v13}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 211
    :cond_2c
    array-length v12, v4

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    array-length v13, v4

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    aget-byte v13, v4, v13

    and-int/lit16 v13, v13, 0xff

    ushr-int/lit8 v13, v13, 0x4

    sget-object v14, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->inverse:[B

    array-length v15, v4

    const/16 v16, 0x2

    sub-int v15, v15, v16

    aget-byte v15, v4, v15

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v15, v15, 0x4

    aget-byte v14, v14, v15

    shl-int/lit8 v14, v14, 0x4

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v4, v12

    .line 212
    const/4 v12, 0x0

    sget-object v13, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    const/4 v14, 0x1

    aget-byte v14, v4, v14

    and-int/lit16 v14, v14, 0xff

    ushr-int/lit8 v14, v14, 0x4

    aget-byte v13, v13, v14

    shl-int/lit8 v13, v13, 0x4

    sget-object v14, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    const/4 v15, 0x1

    aget-byte v15, v4, v15

    and-int/lit8 v15, v15, 0xf

    aget-byte v14, v14, v15

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v4, v12

    .line 215
    const/4 v6, 0x0

    .line 216
    .local v6, boundaryFound:Z
    const/4 v5, 0x0

    .line 218
    .local v5, boundary:I
    array-length v12, v4

    const/4 v13, 0x1

    sub-int v7, v12, v13

    .local v7, i:I
    :goto_6e
    array-length v12, v4

    mul-int/lit8 v13, v10, 0x2

    sub-int/2addr v12, v13

    if-lt v7, v12, :cond_ad

    .line 220
    sget-object v12, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    aget-byte v13, v4, v7

    and-int/lit16 v13, v13, 0xff

    ushr-int/lit8 v13, v13, 0x4

    aget-byte v12, v12, v13

    shl-int/lit8 v12, v12, 0x4

    sget-object v13, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    aget-byte v14, v4, v7

    and-int/lit8 v14, v14, 0xf

    aget-byte v13, v13, v14

    or-int v11, v12, v13

    .line 223
    .local v11, val:I
    const/4 v12, 0x1

    sub-int v12, v7, v12

    aget-byte v12, v4, v12

    xor-int/2addr v12, v11

    and-int/lit16 v12, v12, 0xff

    if-eqz v12, :cond_a2

    .line 225
    if-nez v6, :cond_a5

    .line 227
    const/4 v6, 0x1

    .line 228
    const/4 v12, 0x1

    sub-int v12, v7, v12

    aget-byte v12, v4, v12

    xor-int/2addr v12, v11

    and-int/lit16 v9, v12, 0xff

    .line 229
    const/4 v12, 0x1

    sub-int v5, v7, v12

    .line 218
    :cond_a2
    add-int/lit8 v7, v7, -0x2

    goto :goto_6e

    .line 233
    :cond_a5
    new-instance v12, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v13, "invalid tsums in block"

    invoke-direct {v12, v13}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 238
    .end local v11           #val:I
    :cond_ad
    const/4 v12, 0x0

    aput-byte v12, v4, v5

    .line 240
    array-length v12, v4

    sub-int/2addr v12, v5

    div-int/lit8 v12, v12, 0x2

    new-array v8, v12, [B

    .line 242
    .local v8, nblock:[B
    const/4 v7, 0x0

    :goto_b7
    array-length v12, v8

    if-ge v7, v12, :cond_c6

    .line 244
    mul-int/lit8 v12, v7, 0x2

    add-int/2addr v12, v5

    add-int/lit8 v12, v12, 0x1

    aget-byte v12, v4, v12

    aput-byte v12, v8, v7

    .line 242
    add-int/lit8 v7, v7, 0x1

    goto :goto_b7

    .line 247
    :cond_c6
    const/4 v12, 0x1

    sub-int v12, v9, v12

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    .line 249
    return-object v8
.end method

.method private encodeBlock([BII)[B
    .registers 15
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 145
    iget v8, p0, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    add-int/lit8 v8, v8, 0x7

    div-int/lit8 v8, v8, 0x8

    new-array v0, v8, [B

    .line 146
    .local v0, block:[B
    iget v8, p0, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    add-int/lit8 v4, v8, 0x1

    .line 147
    .local v4, r:I
    move v7, p3

    .line 148
    .local v7, z:I
    iget v8, p0, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    add-int/lit8 v8, v8, 0xd

    div-int/lit8 v5, v8, 0x10

    .line 150
    .local v5, t:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v5, :cond_30

    .line 152
    sub-int v8, v5, v7

    if-le v1, v8, :cond_28

    .line 154
    add-int v8, p2, p3

    sub-int v9, v5, v1

    sub-int/2addr v8, v9

    array-length v9, v0

    sub-int/2addr v9, v5

    sub-int v10, v5, v1

    invoke-static {p1, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    :goto_26
    add-int/2addr v1, v7

    goto :goto_14

    .line 159
    :cond_28
    array-length v8, v0

    add-int v9, v1, v7

    sub-int/2addr v8, v9

    invoke-static {p1, p2, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_26

    .line 163
    :cond_30
    array-length v8, v0

    mul-int/lit8 v9, v5, 0x2

    sub-int v1, v8, v9

    :goto_35
    array-length v8, v0

    if-eq v1, v8, :cond_5a

    .line 165
    array-length v8, v0

    sub-int/2addr v8, v5

    div-int/lit8 v9, v1, 0x2

    add-int/2addr v8, v9

    aget-byte v6, v0, v8

    .line 167
    .local v6, val:B
    sget-object v8, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    and-int/lit16 v9, v6, 0xff

    ushr-int/lit8 v9, v9, 0x4

    aget-byte v8, v8, v9

    shl-int/lit8 v8, v8, 0x4

    sget-object v9, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    and-int/lit8 v10, v6, 0xf

    aget-byte v9, v9, v10

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v1

    .line 169
    add-int/lit8 v8, v1, 0x1

    aput-byte v6, v0, v8

    .line 163
    add-int/lit8 v1, v1, 0x2

    goto :goto_35

    .line 172
    .end local v6           #val:B
    :cond_5a
    array-length v8, v0

    mul-int/lit8 v9, v7, 0x2

    sub-int/2addr v8, v9

    aget-byte v9, v0, v8

    xor-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 173
    array-length v8, v0

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    array-length v9, v0

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-byte v9, v0, v9

    shl-int/lit8 v9, v9, 0x4

    or-int/lit8 v9, v9, 0x6

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 175
    const/16 v8, 0x8

    iget v9, p0, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    rem-int/lit8 v9, v9, 0x8

    sub-int v2, v8, v9

    .line 176
    .local v2, maxBit:I
    const/4 v3, 0x0

    .line 178
    .local v3, offSet:I
    const/16 v8, 0x8

    if-eq v2, v8, :cond_9f

    .line 180
    const/4 v8, 0x0

    aget-byte v9, v0, v8

    const/16 v10, 0xff

    ushr-int/2addr v10, v2

    and-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 181
    const/4 v8, 0x0

    aget-byte v9, v0, v8

    const/16 v10, 0x80

    ushr-int/2addr v10, v2

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 190
    :goto_96
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v9, v0

    sub-int/2addr v9, v3

    invoke-interface {v8, v0, v3, v9}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v8

    return-object v8

    .line 185
    :cond_9f
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-byte v9, v0, v8

    .line 186
    const/4 v8, 0x1

    aget-byte v9, v0, v8

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 187
    const/4 v3, 0x1

    goto :goto_96
.end method


# virtual methods
.method public getInputBlockSize()I
    .registers 3

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 73
    .local v0, baseBlockSize:I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->forEncryption:Z

    if-eqz v1, :cond_f

    .line 75
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v1, v1, 0x2

    .line 79
    :goto_e
    return v1

    :cond_f
    move v1, v0

    goto :goto_e
.end method

.method public getOutputBlockSize()I
    .registers 3

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 90
    .local v0, baseBlockSize:I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->forEncryption:Z

    if-eqz v1, :cond_c

    move v1, v0

    .line 96
    :goto_b
    return v1

    :cond_c
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v1, v1, 0x2

    goto :goto_b
.end method

.method public getPadBits()I
    .registers 2

    .prologue
    .line 120
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    return v0
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 7
    .parameter "forEncryption"
    .parameter "param"

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 46
    .local v1, kParam:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;
    instance-of v3, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v3, :cond_21

    .line 48
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    move-object v2, v0

    .line 50
    .local v2, rParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    .end local v1           #kParam:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 57
    .end local v2           #rParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    .restart local v1       #kParam:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;
    :goto_f
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3, p1, p2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 59
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    iput v3, p0, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    .line 61
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->forEncryption:Z

    .line 62
    return-void

    .line 54
    :cond_21
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-object v1, v0

    goto :goto_f
.end method

.method public processBlock([BII)[B
    .registers 5
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->forEncryption:Z

    if-eqz v0, :cond_9

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->encodeBlock([BII)[B

    move-result-object v0

    .line 135
    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->decodeBlock([BII)[B

    move-result-object v0

    goto :goto_8
.end method

.method public setPadBits(I)V
    .registers 4
    .parameter "padBits"

    .prologue
    .line 107
    const/4 v0, 0x7

    if-le p1, v0, :cond_b

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padBits > 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_b
    iput p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    .line 113
    return-void
.end method
