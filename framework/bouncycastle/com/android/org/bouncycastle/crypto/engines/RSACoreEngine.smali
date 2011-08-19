.class Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;
.super Ljava/lang/Object;
.source "RSACoreEngine.java"


# instance fields
.field private forEncryption:Z

.field private key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertInput([BII)Ljava/math/BigInteger;
    .registers 8
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-le p3, v2, :cond_10

    .line 92
    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v3, "input too large for RSA cipher."

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_10
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne p3, v2, :cond_24

    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-nez v2, :cond_24

    .line 96
    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v3, "input too large for RSA cipher."

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_24
    if-nez p2, :cond_29

    array-length v2, p1

    if-eq p3, v2, :cond_49

    .line 103
    :cond_29
    new-array v0, p3, [B

    .line 105
    .local v0, block:[B
    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    :goto_2f
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 113
    .local v1, res:Ljava/math/BigInteger;
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_4b

    .line 115
    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v3, "input too large for RSA cipher."

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    .end local v0           #block:[B
    .end local v1           #res:Ljava/math/BigInteger;
    :cond_49
    move-object v0, p1

    .restart local v0       #block:[B
    goto :goto_2f

    .line 118
    .restart local v1       #res:Ljava/math/BigInteger;
    :cond_4b
    return-object v1
.end method

.method public convertOutput(Ljava/math/BigInteger;)[B
    .registers 8
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 124
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 126
    .local v0, output:[B
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz v2, :cond_35

    .line 128
    aget-byte v2, v0, v4

    if-nez v2, :cond_1f

    array-length v2, v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v3

    if-le v2, v3, :cond_1f

    .line 130
    array-length v2, v0

    sub-int/2addr v2, v5

    new-array v1, v2, [B

    .line 132
    .local v1, tmp:[B
    array-length v2, v1

    invoke-static {v0, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    .line 158
    .end local v1           #tmp:[B
    :goto_1e
    return-object v2

    .line 137
    :cond_1f
    array-length v2, v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v3

    if-ge v2, v3, :cond_43

    .line 139
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v2

    new-array v1, v2, [B

    .line 141
    .restart local v1       #tmp:[B
    array-length v2, v1

    array-length v3, v0

    sub-int/2addr v2, v3

    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    .line 143
    goto :goto_1e

    .line 148
    .end local v1           #tmp:[B
    :cond_35
    aget-byte v2, v0, v4

    if-nez v2, :cond_43

    .line 150
    array-length v2, v0

    sub-int/2addr v2, v5

    new-array v1, v2, [B

    .line 152
    .restart local v1       #tmp:[B
    array-length v2, v1

    invoke-static {v0, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    .line 154
    goto :goto_1e

    .end local v1           #tmp:[B
    :cond_43
    move-object v2, v0

    .line 158
    goto :goto_1e
.end method

.method public getInputBlockSize()I
    .registers 4

    .prologue
    .line 52
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 54
    .local v0, bitSize:I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz v1, :cond_15

    .line 56
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 60
    :goto_14
    return v1

    :cond_15
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    goto :goto_14
.end method

.method public getOutputBlockSize()I
    .registers 4

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 75
    .local v0, bitSize:I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz v1, :cond_13

    .line 77
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    .line 81
    :goto_12
    return v1

    :cond_13
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    goto :goto_12
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .parameter "forEncryption"
    .parameter "param"

    .prologue
    .line 29
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_13

    .line 31
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    move-object v1, v0

    .line 33
    .local v1, rParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 40
    .end local v1           #rParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    .end local p2
    :goto_10
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    .line 41
    return-void

    .line 37
    .restart local p2
    :cond_13
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    .end local p2
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    goto :goto_10
.end method

.method public processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 14
    .parameter "input"

    .prologue
    .line 163
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    instance-of v10, v10, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v10, :cond_44

    .line 170
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    .line 172
    .local v0, crtKey:Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getP()Ljava/math/BigInteger;

    move-result-object v7

    .line 173
    .local v7, p:Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    .line 174
    .local v8, q:Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDP()Ljava/math/BigInteger;

    move-result-object v1

    .line 175
    .local v1, dP:Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDQ()Ljava/math/BigInteger;

    move-result-object v2

    .line 176
    .local v2, dQ:Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQInv()Ljava/math/BigInteger;

    move-result-object v9

    .line 181
    .local v9, qInv:Ljava/math/BigInteger;
    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v1, v7}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 184
    .local v5, mP:Ljava/math/BigInteger;
    invoke-virtual {p1, v8}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v2, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 187
    .local v6, mQ:Ljava/math/BigInteger;
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 188
    .local v3, h:Ljava/math/BigInteger;
    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 189
    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 192
    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 193
    .local v4, m:Ljava/math/BigInteger;
    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    move-object v10, v4

    .line 199
    .end local v0           #crtKey:Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    .end local v1           #dP:Ljava/math/BigInteger;
    .end local v2           #dQ:Ljava/math/BigInteger;
    .end local v3           #h:Ljava/math/BigInteger;
    .end local v4           #m:Ljava/math/BigInteger;
    .end local v5           #mP:Ljava/math/BigInteger;
    .end local v6           #mQ:Ljava/math/BigInteger;
    .end local v7           #p:Ljava/math/BigInteger;
    .end local v8           #q:Ljava/math/BigInteger;
    .end local v9           #qInv:Ljava/math/BigInteger;
    :goto_43
    return-object v10

    :cond_44
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v10

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    goto :goto_43
.end method
