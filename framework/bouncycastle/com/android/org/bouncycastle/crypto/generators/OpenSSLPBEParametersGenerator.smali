.class public Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;
.super Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
.source "OpenSSLPBEParametersGenerator.java"


# instance fields
.field private digest:Lcom/android/org/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 20
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 27
    return-void
.end method

.method private generateDerivedKey(I)[B
    .registers 10
    .parameter "bytesNeeded"

    .prologue
    const/4 v7, 0x0

    .line 48
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v0, v4, [B

    .line 49
    .local v0, buf:[B
    new-array v1, p1, [B

    .line 50
    .local v1, key:[B
    const/4 v3, 0x0

    .line 54
    .local v3, offset:I
    :goto_c
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->password:[B

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->password:[B

    array-length v6, v6

    invoke-interface {v4, v5, v7, v6}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 55
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->salt:[B

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->salt:[B

    array-length v6, v6

    invoke-interface {v4, v5, v7, v6}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 57
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, v0, v7}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 59
    array-length v4, v0

    if-le p1, v4, :cond_32

    array-length v4, v0

    move v2, v4

    .line 60
    .local v2, len:I
    :goto_2a
    invoke-static {v0, v7, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    add-int/2addr v3, v2

    .line 64
    sub-int/2addr p1, v2

    .line 65
    if-nez p1, :cond_34

    .line 75
    return-object v1

    .end local v2           #len:I
    :cond_32
    move v2, p1

    .line 59
    goto :goto_2a

    .line 71
    .restart local v2       #len:I
    :cond_34
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 72
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_c
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 3
    .parameter "keySize"

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 5
    .parameter "keySize"

    .prologue
    .line 89
    div-int/lit8 p1, p1, 0x8

    .line 91
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 93
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
    .line 110
    div-int/lit8 p1, p1, 0x8

    .line 111
    div-int/lit8 p2, p2, 0x8

    .line 113
    add-int v1, p1, p2

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 115
    .local v0, dKey:[B
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method

.method public init([B[B)V
    .registers 4
    .parameter "password"
    .parameter "salt"

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 40
    return-void
.end method
