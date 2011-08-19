.class public Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;
.super Ljava/lang/Object;
.source "PKCS1Encoding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final HEADER_LENGTH:I = 0xa

.field public static final STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "com.android.org.bouncycastle.pkcs1.strict"


# instance fields
.field private engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private forPrivateKey:Z

.field private random:Ljava/security/SecureRandom;

.field private useStrictLength:Z


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 3
    .parameter "cipher"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 46
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 47
    return-void
.end method

.method private decodeBlock([BII)[B
    .registers 13
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 196
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v5, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 198
    .local v0, block:[B
    array-length v5, v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->getOutputBlockSize()I

    move-result v6

    if-ge v5, v6, :cond_17

    .line 200
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "block truncated"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 203
    :cond_17
    aget-byte v4, v0, v7

    .line 205
    .local v4, type:B
    if-eq v4, v8, :cond_26

    const/4 v5, 0x2

    if-eq v4, v5, :cond_26

    .line 207
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "unknown block type"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 210
    :cond_26
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    if-eqz v5, :cond_3b

    array-length v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v6}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v6

    if-eq v5, v6, :cond_3b

    .line 212
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "block incorrect size"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 220
    :cond_3b
    const/4 v3, 0x1

    .local v3, start:I
    :goto_3c
    array-length v5, v0

    if-eq v3, v5, :cond_43

    .line 222
    aget-byte v1, v0, v3

    .line 224
    .local v1, pad:B
    if-nez v1, :cond_54

    .line 234
    .end local v1           #pad:B
    :cond_43
    add-int/lit8 v3, v3, 0x1

    .line 236
    array-length v5, v0

    if-gt v3, v5, :cond_4c

    const/16 v5, 0xa

    if-ge v3, v5, :cond_64

    .line 238
    :cond_4c
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "no data in block"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 228
    .restart local v1       #pad:B
    :cond_54
    if-ne v4, v8, :cond_61

    const/4 v5, -0x1

    if-eq v1, v5, :cond_61

    .line 230
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "block padding incorrect"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 220
    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 241
    .end local v1           #pad:B
    :cond_64
    array-length v5, v0

    sub-int/2addr v5, v3

    new-array v2, v5, [B

    .line 243
    .local v2, result:[B
    array-length v5, v2

    invoke-static {v0, v3, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    return-object v2
.end method

.method private encodeBlock([BII)[B
    .registers 9
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->getInputBlockSize()I

    move-result v2

    if-le p3, v2, :cond_10

    .line 148
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "input data too large"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_10
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 153
    .local v0, block:[B
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v2, :cond_2a

    .line 155
    aput-byte v3, v0, v4

    .line 157
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1f
    array-length v2, v0

    sub-int/2addr v2, p3

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_49

    .line 159
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 164
    .end local v1           #i:I
    :cond_2a
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 166
    const/4 v2, 0x2

    aput-byte v2, v0, v4

    .line 172
    const/4 v1, 0x1

    .restart local v1       #i:I
    :goto_33
    array-length v2, v0

    sub-int/2addr v2, p3

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_49

    .line 174
    :goto_38
    aget-byte v2, v0, v1

    if-nez v2, :cond_46

    .line 176
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_38

    .line 172
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 181
    :cond_49
    array-length v2, v0

    sub-int/2addr v2, p3

    sub-int/2addr v2, v3

    aput-byte v4, v0, v2

    .line 182
    array-length v2, v0

    sub-int/2addr v2, p3

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v3, v0

    invoke-interface {v2, v0, v4, v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v2

    return-object v2
.end method

.method private useStrict()Z
    .registers 3

    .prologue
    .line 55
    new-instance v1, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding$1;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding$1;-><init>(Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    .local v0, strict:Ljava/lang/String;
    if-eqz v0, :cond_15

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_15
    const/4 v1, 0x1

    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method


# virtual methods
.method public getInputBlockSize()I
    .registers 3

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 100
    .local v0, baseBlockSize:I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_f

    .line 102
    const/16 v1, 0xa

    sub-int v1, v0, v1

    .line 106
    :goto_e
    return v1

    :cond_f
    move v1, v0

    goto :goto_e
.end method

.method public getOutputBlockSize()I
    .registers 3

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 114
    .local v0, baseBlockSize:I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_c

    move v1, v0

    .line 120
    :goto_b
    return v1

    :cond_c
    const/16 v1, 0xa

    sub-int v1, v0, v1

    goto :goto_b
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 7
    .parameter "forEncryption"
    .parameter "param"

    .prologue
    .line 77
    instance-of v3, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v3, :cond_22

    .line 79
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    move-object v2, v0

    .line 81
    .local v2, rParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 82
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 90
    .end local v2           #rParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    .local v1, kParam:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :goto_14
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3, p1, p2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 92
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    .line 93
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    .line 94
    return-void

    .line 86
    .end local v1           #kParam:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_22
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 87
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object v1, v0

    .restart local v1       #kParam:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_14
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
    .line 130
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v0, :cond_9

    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->encodeBlock([BII)[B

    move-result-object v0

    .line 136
    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->decodeBlock([BII)[B

    move-result-object v0

    goto :goto_8
.end method
