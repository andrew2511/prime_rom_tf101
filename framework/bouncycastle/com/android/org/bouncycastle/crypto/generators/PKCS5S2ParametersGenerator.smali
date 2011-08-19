.class public Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;
.super Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS5S2ParametersGenerator.java"


# instance fields
.field private hMac:Lcom/android/org/bouncycastle/crypto/Mac;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 22
    new-instance v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    .line 29
    return-void
.end method

.method private F([B[BI[B[BI)V
    .registers 15
    .parameter "P"
    .parameter "S"
    .parameter "c"
    .parameter "iBuf"
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v7, 0x0

    .line 39
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v4

    new-array v3, v4, [B

    .line 40
    .local v3, state:[B
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 42
    .local v2, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v4, v2}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 44
    if-eqz p2, :cond_1b

    .line 46
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    array-length v5, p2

    invoke-interface {v4, p2, v7, v5}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 49
    :cond_1b
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    array-length v5, p4

    invoke-interface {v4, p4, v7, v5}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 51
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v4, v3, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 53
    array-length v4, v3

    invoke-static {v3, v7, p5, p6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    if-nez p3, :cond_34

    .line 57
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "iteration count must be at least 1."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 60
    :cond_34
    const/4 v0, 0x1

    .local v0, count:I
    :goto_35
    if-ge v0, p3, :cond_5b

    .line 62
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v4, v2}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 63
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    array-length v5, v3

    invoke-interface {v4, v3, v7, v5}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 64
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v4, v3, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 66
    const/4 v1, 0x0

    .local v1, j:I
    :goto_48
    array-length v4, v3

    if-eq v1, v4, :cond_58

    .line 68
    add-int v4, p6, v1

    aget-byte v5, p5, v4

    aget-byte v6, v3, v1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p5, v4

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 60
    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 71
    .end local v1           #j:I
    :cond_5b
    return-void
.end method

.method private generateDerivedKey(I)[B
    .registers 13
    .parameter "dkLen"

    .prologue
    const/4 v10, 0x1

    .line 86
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v7

    .line 87
    .local v7, hLen:I
    add-int v0, p1, v7

    sub-int/2addr v0, v10

    div-int v9, v0, v7

    .line 88
    .local v9, l:I
    const/4 v0, 0x4

    new-array v4, v0, [B

    .line 89
    .local v4, iBuf:[B
    mul-int v0, v9, v7

    new-array v5, v0, [B

    .line 91
    .local v5, out:[B
    const/4 v8, 0x1

    .local v8, i:I
    :goto_14
    if-gt v8, v9, :cond_2a

    .line 93
    invoke-direct {p0, v4, v8}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->intToOctet([BI)V

    .line 95
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->password:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->salt:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->iterationCount:I

    sub-int v0, v8, v10

    mul-int v6, v0, v7

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->F([B[BI[B[BI)V

    .line 91
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 98
    :cond_2a
    return-object v5
.end method

.method private intToOctet([BI)V
    .registers 5
    .parameter "buf"
    .parameter "i"

    .prologue
    .line 77
    const/4 v0, 0x0

    ushr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 78
    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 79
    const/4 v0, 0x2

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 80
    const/4 v0, 0x3

    int-to-byte v1, p2

    aput-byte v1, p1, v0

    .line 81
    return-void
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 3
    .parameter "keySize"

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 5
    .parameter "keySize"

    .prologue
    .line 111
    div-int/lit8 p1, p1, 0x8

    .line 113
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 115
    .local v0, dKey:[B
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 7
    .parameter "keySize"
    .parameter "ivSize"

    .prologue
    .line 131
    div-int/lit8 p1, p1, 0x8

    .line 132
    div-int/lit8 p2, p2, 0x8

    .line 134
    add-int v1, p1, p2

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 136
    .local v0, dKey:[B
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method
