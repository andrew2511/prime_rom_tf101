.class public Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;
.super Ljava/lang/Object;
.source "DSAParametersGenerator.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private L:I

.field private N:I

.field private certainty:I

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    .line 25
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    .line 26
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 9
    .parameter "p"
    .parameter "q"
    .parameter "r"

    .prologue
    .line 147
    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 148
    .local v0, e:Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 152
    .local v3, pSub2:Ljava/math/BigInteger;
    :cond_10
    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-static {v4, v3, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 153
    .local v2, h:Ljava/math/BigInteger;
    invoke-virtual {v2, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 154
    .local v1, g:Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_10

    .line 156
    return-object v1
.end method

.method private static calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 4
    .parameter "p"
    .parameter "q"
    .parameter "r"

    .prologue
    .line 281
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private generateParameters_FIPS186_2()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .registers 26

    .prologue
    .line 74
    const/16 v21, 0x14

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 75
    .local v16, seed:[B
    const/16 v21, 0x14

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object v13, v0

    .line 76
    .local v13, part1:[B
    const/16 v21, 0x14

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object v14, v0

    .line 77
    .local v14, part2:[B
    const/16 v21, 0x14

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 78
    .local v18, u:[B
    new-instance v17, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct/range {v17 .. v17}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 79
    .local v17, sha1:Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0xa0

    move v10, v0

    .line 80
    .local v10, n:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x8

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 84
    .local v19, w:[B
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 86
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object v2, v13

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[B)V

    .line 87
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object v2, v14

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    invoke-static {v14}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 89
    move-object/from16 v0, v17

    move-object v1, v14

    move-object v2, v14

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[B)V

    .line 91
    const/4 v8, 0x0

    .local v8, i:I
    :goto_75
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move v0, v8

    move/from16 v1, v21

    if-eq v0, v1, :cond_8f

    .line 93
    aget-byte v21, v13, v8

    aget-byte v22, v14, v8

    xor-int v21, v21, v22

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v18, v8

    .line 91
    add-int/lit8 v8, v8, 0x1

    goto :goto_75

    .line 96
    :cond_8f
    const/16 v21, 0x0

    aget-byte v22, v18, v21

    or-int/lit8 v22, v22, -0x80

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v18, v21

    .line 97
    const/16 v21, 0x13

    aget-byte v22, v18, v21

    or-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v18, v21

    .line 99
    new-instance v15, Ljava/math/BigInteger;

    const/16 v21, 0x1

    move-object v0, v15

    move/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 101
    .local v15, q:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    move/from16 v21, v0

    move-object v0, v15

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v21

    if-eqz v21, :cond_40

    .line 106
    invoke-static/range {v16 .. v16}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v11

    .line 107
    .local v11, offset:[B
    invoke-static {v11}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 109
    const/4 v6, 0x0

    .local v6, counter:I
    :goto_cc
    const/16 v21, 0x1000

    move v0, v6

    move/from16 v1, v21

    if-ge v0, v1, :cond_40

    .line 111
    const/4 v9, 0x0

    .local v9, k:I
    :goto_d4
    if-ge v9, v10, :cond_104

    .line 113
    invoke-static {v11}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 114
    move-object/from16 v0, v17

    move-object v1, v11

    move-object v2, v13

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[B)V

    .line 115
    const/16 v21, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v23, v9, 0x1

    move-object v0, v13

    array-length v0, v0

    move/from16 v24, v0

    mul-int v23, v23, v24

    sub-int v22, v22, v23

    move-object v0, v13

    array-length v0, v0

    move/from16 v23, v0

    move-object v0, v13

    move/from16 v1, v21

    move-object/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    add-int/lit8 v9, v9, 0x1

    goto :goto_d4

    .line 118
    :cond_104
    invoke-static {v11}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 119
    move-object/from16 v0, v17

    move-object v1, v11

    move-object v2, v13

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[B)V

    .line 120
    move-object v0, v13

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    move-object v0, v13

    array-length v0, v0

    move/from16 v23, v0

    mul-int v23, v23, v10

    sub-int v22, v22, v23

    sub-int v21, v21, v22

    const/16 v22, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    move-object v0, v13

    array-length v0, v0

    move/from16 v24, v0

    mul-int v24, v24, v10

    sub-int v23, v23, v24

    move-object v0, v13

    move/from16 v1, v21

    move-object/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    const/16 v21, 0x0

    aget-byte v22, v19, v21

    or-int/lit8 v22, v22, -0x80

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v19, v21

    .line 124
    new-instance v20, Ljava/math/BigInteger;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 126
    .local v20, x:Ljava/math/BigInteger;
    const/16 v21, 0x1

    move-object v0, v15

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 128
    .local v5, c:Ljava/math/BigInteger;
    sget-object v21, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 130
    .local v12, p:Ljava/math/BigInteger;
    invoke-virtual {v12}, Ljava/math/BigInteger;->bitLength()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_184

    .line 109
    :cond_180
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_cc

    .line 135
    :cond_184
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    move/from16 v21, v0

    move-object v0, v12

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v21

    if-eqz v21, :cond_180

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    move-object/from16 v21, v0

    move-object v0, v12

    move-object v1, v15

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v7

    .line 139
    .local v7, g:Ljava/math/BigInteger;
    new-instance v21, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v22, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    move-object/from16 v0, v21

    move-object v1, v12

    move-object v2, v15

    move-object v3, v7

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v21
.end method

.method private generateParameters_FIPS186_3()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .registers 30

    .prologue
    .line 169
    new-instance v13, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v13}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    .line 170
    .local v13, d:Lcom/android/org/bouncycastle/crypto/Digest;
    invoke-interface {v13}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v25

    mul-int/lit8 v19, v25, 0x8

    .line 178
    .local v19, outlen:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    move/from16 v24, v0

    .line 179
    .local v24, seedlen:I
    div-int/lit8 v25, v24, 0x8

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 182
    .local v23, seed:[B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v25, v0

    const/16 v26, 0x1

    sub-int v25, v25, v26

    div-int v17, v25, v19

    .line 185
    .local v17, n:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v25, v0

    const/16 v26, 0x1

    sub-int v25, v25, v26

    rem-int v9, v25, v19

    .line 187
    .local v9, b:I
    invoke-interface {v13}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 191
    .local v20, output:[B
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 194
    move-object v0, v13

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[B)V

    .line 195
    new-instance v25, Ljava/math/BigInteger;

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v26, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    move/from16 v27, v0

    const/16 v28, 0x1

    sub-int v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 198
    .local v5, U:Ljava/math/BigInteger;
    sget-object v25, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    move/from16 v26, v0

    const/16 v27, 0x1

    sub-int v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    sget-object v26, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    sget-object v26, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    .line 202
    .local v22, q:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    move/from16 v25, v0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v25

    if-eqz v25, :cond_3b

    .line 210
    invoke-static/range {v23 .. v23}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v18

    .line 213
    .local v18, offset:[B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v25, v0

    mul-int/lit8 v12, v25, 0x4

    .line 214
    .local v12, counterLimit:I
    const/4 v11, 0x0

    .local v11, counter:I
    :goto_b8
    if-ge v11, v12, :cond_3b

    .line 220
    sget-object v7, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    .line 221
    .local v7, W:Ljava/math/BigInteger;
    const/16 v16, 0x0

    .local v16, j:I
    const/4 v14, 0x0

    .local v14, exp:I
    :goto_bf
    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_102

    .line 223
    invoke-static/range {v18 .. v18}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 224
    move-object v0, v13

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[B)V

    .line 226
    new-instance v6, Ljava/math/BigInteger;

    const/16 v25, 0x1

    move-object v0, v6

    move/from16 v1, v25

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 227
    .local v6, Vj:Ljava/math/BigInteger;
    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f2

    .line 229
    sget-object v25, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v25

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v25

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 232
    :cond_f2
    invoke-virtual {v6, v14}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v25

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 221
    add-int/lit8 v16, v16, 0x1

    add-int v14, v14, v19

    goto :goto_bf

    .line 236
    .end local v6           #Vj:Ljava/math/BigInteger;
    :cond_102
    sget-object v25, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v26, v0

    const/16 v27, 0x1

    sub-int v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v25

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 239
    .local v8, X:Ljava/math/BigInteger;
    const/16 v25, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v25

    move-object v0, v8

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 242
    .local v10, c:Ljava/math/BigInteger;
    sget-object v25, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object v0, v10

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    move-object v0, v8

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    .line 245
    .local v21, p:Ljava/math/BigInteger;
    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->bitLength()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_14e

    .line 214
    :cond_14a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_b8

    .line 252
    :cond_14e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    move/from16 v25, v0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v25

    if-eqz v25, :cond_14a

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v15

    .line 266
    .local v15, g:Ljava/math/BigInteger;
    new-instance v25, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v26, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object v3, v15

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v25
.end method

.method private static getDefaultN(I)I
    .registers 2
    .parameter "L"

    .prologue
    .line 321
    const/16 v0, 0x400

    if-le p0, v0, :cond_7

    const/16 v0, 0x100

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0xa0

    goto :goto_6
.end method

.method private static hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[B)V
    .registers 5
    .parameter "d"
    .parameter "input"
    .parameter "output"

    .prologue
    const/4 v1, 0x0

    .line 315
    array-length v0, p1

    invoke-interface {p0, p1, v1, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 316
    invoke-interface {p0, p2, v1}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 317
    return-void
.end method

.method private static inc([B)V
    .registers 5
    .parameter "buf"

    .prologue
    .line 326
    array-length v2, p0

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_4
    if-ltz v1, :cond_11

    .line 328
    aget-byte v2, p0, v1

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v0, v2

    .line 329
    .local v0, b:B
    aput-byte v0, p0, v1

    .line 331
    if-eqz v0, :cond_12

    .line 336
    .end local v0           #b:B
    :cond_11
    return-void

    .line 326
    .restart local v0       #b:B
    :cond_12
    add-int/lit8 v1, v1, -0x1

    goto :goto_4
.end method

.method private init(IIILjava/security/SecureRandom;)V
    .registers 5
    .parameter "L"
    .parameter "N"
    .parameter "certainty"
    .parameter "random"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    .line 54
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 55
    iput p3, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 56
    iput-object p4, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 57
    return-void
.end method


# virtual methods
.method public generateParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .registers 3

    .prologue
    .line 67
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    const/16 v1, 0x400

    if-le v0, v1, :cond_b

    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_3()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_2()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    goto :goto_a
.end method

.method public init(IILjava/security/SecureRandom;)V
    .registers 5
    .parameter "size"
    .parameter "certainty"
    .parameter "random"

    .prologue
    .line 40
    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getDefaultN(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(IIILjava/security/SecureRandom;)V

    .line 41
    return-void
.end method
