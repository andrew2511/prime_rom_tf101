.class public Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;
.super Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS12ParametersGenerator.java"


# static fields
.field public static final IV_MATERIAL:I = 0x2

.field public static final KEY_MATERIAL:I = 0x1

.field public static final MAC_MATERIAL:I = 0x3


# instance fields
.field private digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field private u:I

.field private v:I


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .registers 5
    .parameter "digest"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 40
    instance-of v0, p1, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;

    if-eqz v0, :cond_18

    .line 42
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    .line 43
    check-cast p1, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;

    .end local p1
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    .line 49
    return-void

    .line 47
    .restart local p1
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Digest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private adjust([BI[B)V
    .registers 9
    .parameter "a"
    .parameter "aOff"
    .parameter "b"

    .prologue
    const/4 v4, 0x1

    .line 61
    array-length v2, p3

    sub-int/2addr v2, v4

    aget-byte v2, p3, v2

    and-int/lit16 v2, v2, 0xff

    array-length v3, p3

    add-int/2addr v3, p2

    sub-int/2addr v3, v4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 63
    .local v1, x:I
    array-length v2, p3

    add-int/2addr v2, p2

    sub-int/2addr v2, v4

    int-to-byte v3, v1

    aput-byte v3, p1, v2

    .line 64
    ushr-int/lit8 v1, v1, 0x8

    .line 66
    array-length v2, p3

    const/4 v3, 0x2

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_1d
    if-ltz v0, :cond_35

    .line 68
    aget-byte v2, p3, v0

    and-int/lit16 v2, v2, 0xff

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 69
    add-int v2, p2, v0

    int-to-byte v3, v1

    aput-byte v3, p1, v2

    .line 70
    ushr-int/lit8 v1, v1, 0x8

    .line 66
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 72
    :cond_35
    return-void
.end method

.method private generateDerivedKey(II)[B
    .registers 23
    .parameter "idByte"
    .parameter "n"

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    move v15, v0

    new-array v7, v15, [B

    .line 82
    .local v7, D:[B
    move/from16 v0, p2

    new-array v0, v0, [B

    move-object v12, v0

    .line 84
    .local v12, dKey:[B
    const/4 v13, 0x0

    .local v13, i:I
    :goto_d
    array-length v15, v7

    if-eq v13, v15, :cond_19

    .line 86
    move/from16 v0, p1

    int-to-byte v0, v0

    move v15, v0

    aput-byte v15, v7, v13

    .line 84
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 91
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    move-object v15, v0

    if-eqz v15, :cond_6d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    move-object v15, v0

    array-length v15, v15

    if-eqz v15, :cond_6d

    .line 93
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    move v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    move/from16 v17, v0

    add-int v16, v16, v17

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    move/from16 v17, v0

    div-int v16, v16, v17

    mul-int v15, v15, v16

    new-array v10, v15, [B

    .line 95
    .local v10, S:[B
    const/4 v13, 0x0

    :goto_51
    array-length v15, v10

    if-eq v13, v15, :cond_70

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    rem-int v16, v13, v16

    aget-byte v15, v15, v16

    aput-byte v15, v10, v13

    .line 95
    add-int/lit8 v13, v13, 0x1

    goto :goto_51

    .line 102
    .end local v10           #S:[B
    :cond_6d
    const/4 v15, 0x0

    new-array v10, v15, [B

    .line 107
    .restart local v10       #S:[B
    :cond_70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    move-object v15, v0

    if-eqz v15, :cond_c4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    move-object v15, v0

    array-length v15, v15

    if-eqz v15, :cond_c4

    .line 109
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    move v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    move/from16 v17, v0

    add-int v16, v16, v17

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    move/from16 v17, v0

    div-int v16, v16, v17

    mul-int v15, v15, v16

    new-array v9, v15, [B

    .line 111
    .local v9, P:[B
    const/4 v13, 0x0

    :goto_a8
    array-length v15, v9

    if-eq v13, v15, :cond_c7

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    rem-int v16, v13, v16

    aget-byte v15, v15, v16

    aput-byte v15, v9, v13

    .line 111
    add-int/lit8 v13, v13, 0x1

    goto :goto_a8

    .line 118
    .end local v9           #P:[B
    :cond_c4
    const/4 v15, 0x0

    new-array v9, v15, [B

    .line 121
    .restart local v9       #P:[B
    :cond_c7
    array-length v15, v10

    move-object v0, v9

    array-length v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    new-array v8, v15, [B

    .line 123
    .local v8, I:[B
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v0, v10

    array-length v0, v0

    move/from16 v17, v0

    move-object v0, v10

    move v1, v15

    move-object v2, v8

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    const/4 v15, 0x0

    move-object v0, v10

    array-length v0, v0

    move/from16 v16, v0

    move-object v0, v9

    array-length v0, v0

    move/from16 v17, v0

    move-object v0, v9

    move v1, v15

    move-object v2, v8

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    move v15, v0

    new-array v6, v15, [B

    .line 127
    .local v6, B:[B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    move v15, v0

    add-int v15, v15, p2

    const/16 v16, 0x1

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    move/from16 v16, v0

    div-int v11, v15, v16

    .line 129
    .local v11, c:I
    const/4 v13, 0x1

    :goto_10f
    if-gt v13, v11, :cond_1f1

    .line 131
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    move v15, v0

    new-array v5, v15, [B

    .line 133
    .local v5, A:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    move-object v15, v0

    const/16 v16, 0x0

    move-object v0, v7

    array-length v0, v0

    move/from16 v17, v0

    move-object v0, v15

    move-object v1, v7

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    move-object v15, v0

    const/16 v16, 0x0

    move-object v0, v8

    array-length v0, v0

    move/from16 v17, v0

    move-object v0, v15

    move-object v1, v8

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    move-object v15, v0

    const/16 v16, 0x0

    move-object v0, v15

    move-object v1, v5

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 136
    const/4 v14, 0x1

    .local v14, j:I
    :goto_14f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->iterationCount:I

    move v15, v0

    if-eq v14, v15, :cond_17b

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    move-object v15, v0

    const/16 v16, 0x0

    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    move-object v0, v15

    move-object v1, v5

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    move-object v15, v0

    const/16 v16, 0x0

    move-object v0, v15

    move-object v1, v5

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 136
    add-int/lit8 v14, v14, 0x1

    goto :goto_14f

    .line 142
    :cond_17b
    const/4 v14, 0x0

    :goto_17c
    array-length v15, v6

    if-eq v14, v15, :cond_189

    .line 144
    array-length v15, v5

    rem-int v15, v14, v15

    aget-byte v15, v5, v15

    aput-byte v15, v6, v14

    .line 142
    add-int/lit8 v14, v14, 0x1

    goto :goto_17c

    .line 147
    :cond_189
    const/4 v14, 0x0

    :goto_18a
    array-length v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    move/from16 v16, v0

    div-int v15, v15, v16

    if-eq v14, v15, :cond_1a6

    .line 149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    move v15, v0

    mul-int/2addr v15, v14

    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v15

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->adjust([BI[B)V

    .line 147
    add-int/lit8 v14, v14, 0x1

    goto :goto_18a

    .line 152
    :cond_1a6
    if-ne v13, v11, :cond_1d5

    .line 154
    const/4 v15, 0x0

    const/16 v16, 0x1

    sub-int v16, v13, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    move-object v0, v12

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v18, v13, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    sub-int v17, v17, v18

    move-object v0, v5

    move v1, v15

    move-object v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    :goto_1d1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_10f

    .line 158
    :cond_1d5
    const/4 v15, 0x0

    const/16 v16, 0x1

    sub-int v16, v13, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    move-object v0, v5

    move v1, v15

    move-object v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1d1

    .line 162
    .end local v5           #A:[B
    .end local v14           #j:I
    :cond_1f1
    return-object v12
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 5
    .parameter "keySize"

    .prologue
    .line 215
    div-int/lit8 p1, p1, 0x8

    .line 217
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 219
    .local v0, dKey:[B
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 5
    .parameter "keySize"

    .prologue
    .line 175
    div-int/lit8 p1, p1, 0x8

    .line 177
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 179
    .local v0, dKey:[B
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 8
    .parameter "keySize"
    .parameter "ivSize"

    .prologue
    const/4 v4, 0x0

    .line 195
    div-int/lit8 p1, p1, 0x8

    .line 196
    div-int/lit8 p2, p2, 0x8

    .line 198
    const/4 v2, 0x1

    invoke-direct {p0, v2, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 200
    .local v0, dKey:[B
    const/4 v2, 0x2

    invoke-direct {p0, v2, p2}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v1

    .line 202
    .local v1, iv:[B
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v0, v4, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v2, v3, v1, v4, p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v2
.end method
