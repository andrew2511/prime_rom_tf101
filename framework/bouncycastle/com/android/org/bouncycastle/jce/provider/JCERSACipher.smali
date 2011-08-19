.class public Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;
.super Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;
.source "JCERSACipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JCERSACipher$NoPadding;
    }
.end annotation


# instance fields
.field private bOut:Ljava/io/ByteArrayOutputStream;

.field private cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private privateKeyOnly:Z

.field private publicKeyOnly:Z


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 3
    .parameter "engine"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->publicKeyOnly:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->privateKeyOnly:Z

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    .line 47
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .registers 5
    .parameter "pSpec"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->publicKeyOnly:Z

    .line 41
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->privateKeyOnly:Z

    .line 42
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    .line 55
    :try_start_f
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V
    :try_end_12
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_f .. :try_end_12} :catch_13

    .line 61
    return-void

    .line 57
    :catch_13
    move-exception v0

    .line 59
    .local v0, e:Ljavax/crypto/NoSuchPaddingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(ZZLcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 5
    .parameter "publicKeyOnly"
    .parameter "privateKeyOnly"
    .parameter "engine"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->publicKeyOnly:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->privateKeyOnly:Z

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    .line 68
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->publicKeyOnly:Z

    .line 69
    iput-boolean p2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->privateKeyOnly:Z

    .line 70
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 71
    return-void
.end method

.method private initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .registers 7
    .parameter "pSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Ljava/security/spec/MGF1ParameterSpec;

    .line 78
    .local v1, mgfParams:Ljava/security/spec/MGF1ParameterSpec;
    invoke-virtual {v1}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEDigestUtil;->getDigest(Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 80
    .local v0, digest:Lcom/android/org/bouncycastle/crypto/Digest;
    if-nez v0, :cond_2d

    .line 82
    new-instance v2, Ljavax/crypto/NoSuchPaddingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no match on OAEP constructor for digest algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_2d
    new-instance v3, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;

    new-instance v4, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v4}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v2

    check-cast v2, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v2}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v2

    invoke-direct {v3, v4, v0, v2}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 86
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 87
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .registers 13
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 482
    if-eqz p1, :cond_7

    .line 484
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 487
    :cond_7
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v4, v4, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    if-eqz v4, :cond_25

    .line 489
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-le v4, v5, :cond_3b

    .line 491
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v5, "too much data for RSA block"

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 496
    :cond_25
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v5

    if-le v4, v5, :cond_3b

    .line 498
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v5, "too much data for RSA block"

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 506
    :cond_3b
    :try_start_3b
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 507
    .local v0, bytes:[B
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 509
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v5, 0x0

    array-length v6, v0

    invoke-interface {v4, v0, v5, v6}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_4d
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_3b .. :try_end_4d} :catch_5b

    move-result-object v3

    .line 516
    .local v3, out:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4f
    array-length v4, v3

    if-eq v2, v4, :cond_67

    .line 518
    add-int v4, p5, v2

    aget-byte v5, v3, v2

    aput-byte v5, p4, v4

    .line 516
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 511
    .end local v0           #bytes:[B
    .end local v2           #i:I
    .end local v3           #out:[B
    :catch_5b
    move-exception v4

    move-object v1, v4

    .line 513
    .local v1, e:Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v4, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 521
    .end local v1           #e:Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    .restart local v0       #bytes:[B
    .restart local v2       #i:I
    .restart local v3       #out:[B
    :cond_67
    array-length v4, v3

    return v4
.end method

.method protected engineDoFinal([BII)[B
    .registers 9
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 440
    if-eqz p1, :cond_7

    .line 442
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 445
    :cond_7
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v2, v2, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    if-eqz v2, :cond_25

    .line 447
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-le v2, v3, :cond_3b

    .line 449
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v3, "too much data for RSA block"

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 454
    :cond_25
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v3

    if-le v2, v3, :cond_3b

    .line 456
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v3, "too much data for RSA block"

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 462
    :cond_3b
    :try_start_3b
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 464
    .local v0, bytes:[B
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 466
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-interface {v2, v0, v3, v4}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_4d
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_3b .. :try_end_4d} :catch_4f

    move-result-object v2

    return-object v2

    .line 468
    .end local v0           #bytes:[B
    :catch_4f
    move-exception v2

    move-object v1, v2

    .line 470
    .local v1, e:Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineGetBlockSize()I
    .registers 4

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 95
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 97
    .local v0, e:Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RSA Cipher not initialised"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineGetIV()[B
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .registers 6
    .parameter "key"

    .prologue
    .line 109
    instance-of v2, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v2, :cond_11

    .line 111
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    move-object v1, v0

    .line 113
    .local v1, k:Ljava/security/interfaces/RSAPrivateKey;
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 119
    .end local v1           #k:Ljava/security/interfaces/RSAPrivateKey;
    :goto_10
    return v2

    .line 115
    :cond_11
    instance-of v2, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v2, :cond_22

    .line 117
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    move-object v1, v0

    .line 119
    .local v1, k:Ljava/security/interfaces/RSAPublicKey;
    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    goto :goto_10

    .line 122
    .end local v1           #k:Ljava/security/interfaces/RSAPublicKey;
    :cond_22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "not an RSA key!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineGetOutputSize(I)I
    .registers 5
    .parameter "inputLen"

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 132
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 134
    .local v0, e:Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RSA Cipher not initialised"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 4

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v1, :cond_19

    .line 142
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    if-eqz v1, :cond_19

    .line 146
    :try_start_8
    const-string v1, "OAEP"

    const-string v2, "BC"

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 147
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1c

    .line 156
    :cond_19
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v1

    .line 149
    :catch_1c
    move-exception v1

    move-object v0, v1

    .line 151
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 10
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 347
    const/4 v1, 0x0

    .line 349
    .local v1, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_9

    .line 353
    :try_start_3
    const-class v2, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_8
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_3 .. :try_end_8} :catch_f

    move-result-object v1

    .line 361
    :cond_9
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 362
    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 363
    return-void

    .line 355
    :catch_f
    move-exception v2

    move-object v0, v2

    .line 357
    .local v0, e:Ljava/security/spec/InvalidParameterSpecException;
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot recognise parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/spec/InvalidParameterSpecException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 8
    .parameter "opmode"
    .parameter "key"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 373
    const/4 v1, 0x0

    :try_start_1
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_6} :catch_7

    .line 380
    return-void

    .line 375
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 378
    .local v0, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eeeek! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 15
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 247
    if-eqz p3, :cond_6

    instance-of v7, p3, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v7, :cond_112

    .line 249
    :cond_6
    instance-of v7, p2, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v7, :cond_49

    .line 251
    iget-boolean v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->privateKeyOnly:Z

    if-eqz v7, :cond_16

    .line 253
    new-instance v7, Ljava/security/InvalidKeyException;

    const-string v8, "mode 1 requires RSAPrivateKey"

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 257
    :cond_16
    check-cast p2, Ljava/security/interfaces/RSAPublicKey;

    .end local p2
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v4

    .local v4, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v5, v4

    .line 274
    .end local v4           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .local v5, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_1d
    if-eqz p3, :cond_e3

    .line 276
    move-object v0, p3

    check-cast v0, Ljavax/crypto/spec/OAEPParameterSpec;

    move-object v6, v0

    .line 278
    .local v6, spec:Ljavax/crypto/spec/OAEPParameterSpec;
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 280
    invoke-virtual {v6}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MGF1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_69

    invoke-virtual {v6}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_69

    .line 282
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    const-string v8, "unknown mask generation function specified"

    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 259
    .end local v5           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .end local v6           #spec:Ljavax/crypto/spec/OAEPParameterSpec;
    .restart local p2
    :cond_49
    instance-of v7, p2, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v7, :cond_61

    .line 261
    iget-boolean v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->publicKeyOnly:Z

    if-eqz v7, :cond_59

    .line 263
    new-instance v7, Ljava/security/InvalidKeyException;

    const-string v8, "mode 2 requires RSAPublicKey"

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 267
    :cond_59
    check-cast p2, Ljava/security/interfaces/RSAPrivateKey;

    .end local p2
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v4

    .restart local v4       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v5, v4

    .end local v4           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v5       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_1d

    .line 271
    .end local v5           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p2
    :cond_61
    new-instance v7, Ljava/security/InvalidKeyException;

    const-string v8, "unknown key type passed to RSA"

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 285
    .end local p2
    .restart local v5       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v6       #spec:Ljavax/crypto/spec/OAEPParameterSpec;
    :cond_69
    invoke-virtual {v6}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v7

    instance-of v7, v7, Ljava/security/spec/MGF1ParameterSpec;

    if-nez v7, :cond_79

    .line 287
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    const-string v8, "unkown MGF parameters"

    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 290
    :cond_79
    invoke-virtual {v6}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/jce/provider/JCEDigestUtil;->getDigest(Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    .line 292
    .local v1, digest:Lcom/android/org/bouncycastle/crypto/Digest;
    if-nez v1, :cond_a0

    .line 294
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no match on digest algorithm: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 297
    :cond_a0
    invoke-virtual {v6}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    check-cast v3, Ljava/security/spec/MGF1ParameterSpec;

    .line 298
    .local v3, mgfParams:Ljava/security/spec/MGF1ParameterSpec;
    invoke-virtual {v3}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/jce/provider/JCEDigestUtil;->getDigest(Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v2

    .line 300
    .local v2, mgfDigest:Lcom/android/org/bouncycastle/crypto/Digest;
    if-nez v2, :cond_cd

    .line 302
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no match on MGF digest algorithm: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 305
    :cond_cd
    new-instance v8, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;

    new-instance v9, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-virtual {v6}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v7

    check-cast v7, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v7}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v7

    invoke-direct {v8, v9, v1, v2, v7}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    iput-object v8, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 313
    .end local v1           #digest:Lcom/android/org/bouncycastle/crypto/Digest;
    .end local v2           #mgfDigest:Lcom/android/org/bouncycastle/crypto/Digest;
    .end local v3           #mgfParams:Ljava/security/spec/MGF1ParameterSpec;
    .end local v6           #spec:Ljavax/crypto/spec/OAEPParameterSpec;
    :cond_e3
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v7, v7, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    if-nez v7, :cond_133

    .line 315
    if-eqz p4, :cond_11a

    .line 317
    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v4, v5, p4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    .line 325
    .end local v5           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v4       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_f0
    packed-switch p1, :pswitch_data_136

    .line 336
    new-instance v7, Ljava/security/InvalidParameterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown opmode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " passed to RSA"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 310
    .end local v4           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p2
    :cond_112
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "unknown parameter type."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 321
    .end local p2
    .restart local v5       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_11a
    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v4, v5, v7}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    .end local v5           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v4       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_f0

    .line 329
    :pswitch_125
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v8, 0x1

    invoke-interface {v7, v8, v4}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 338
    :goto_12b
    return-void

    .line 333
    :pswitch_12c
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v8, 0x0

    invoke-interface {v7, v8, v4}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_12b

    .end local v4           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v5       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_133
    move-object v4, v5

    .end local v5           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v4       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_f0

    .line 325
    nop

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_125
        :pswitch_12c
        :pswitch_125
        :pswitch_12c
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .registers 6
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, md:Ljava/lang/String;
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "ECB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 180
    :cond_16
    :goto_16
    return-void

    .line 170
    :cond_17
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 172
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->privateKeyOnly:Z

    .line 173
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->publicKeyOnly:Z

    goto :goto_16

    .line 176
    :cond_24
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 178
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->privateKeyOnly:Z

    .line 179
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->publicKeyOnly:Z

    goto :goto_16

    .line 183
    :cond_31
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t support mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .registers 8
    .parameter "padding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, pad:Ljava/lang/String;
    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 194
    new-instance v1, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 236
    :goto_13
    return-void

    .line 196
    :cond_14
    const-string v1, "PKCS1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 198
    new-instance v1, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    goto :goto_13

    .line 200
    :cond_29
    const-string v1, "ISO9796-1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 202
    new-instance v1, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/encodings/ISO9796d1Encoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    goto :goto_13

    .line 204
    :cond_3e
    const-string v1, "OAEPWITHMD5ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 206
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v2, "MD5"

    const-string v3, "MGF1"

    new-instance v4, Ljava/security/spec/MGF1ParameterSpec;

    const-string v5, "MD5"

    invoke-direct {v4, v5}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_13

    .line 208
    :cond_5c
    const-string v1, "OAEPPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 210
    sget-object v1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_13

    .line 212
    :cond_6a
    const-string v1, "OAEPWITHSHA1ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    const-string v1, "OAEPWITHSHA-1ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 214
    :cond_7a
    sget-object v1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_13

    .line 216
    :cond_80
    const-string v1, "OAEPWITHSHA224ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    const-string v1, "OAEPWITHSHA-224ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 218
    :cond_90
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v2, "SHA-224"

    const-string v3, "MGF1"

    new-instance v4, Ljava/security/spec/MGF1ParameterSpec;

    const-string v5, "SHA-224"

    invoke-direct {v4, v5}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_13

    .line 220
    :cond_a7
    const-string v1, "OAEPWITHSHA256ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b7

    const-string v1, "OAEPWITHSHA-256ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 222
    :cond_b7
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v2, "SHA-256"

    const-string v3, "MGF1"

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_13

    .line 224
    :cond_c9
    const-string v1, "OAEPWITHSHA384ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d9

    const-string v1, "OAEPWITHSHA-384ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 226
    :cond_d9
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v2, "SHA-384"

    const-string v3, "MGF1"

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_13

    .line 228
    :cond_eb
    const-string v1, "OAEPWITHSHA512ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "OAEPWITHSHA-512ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10d

    .line 230
    :cond_fb
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v2, "SHA-512"

    const-string v3, "MGF1"

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_13

    .line 234
    :cond_10d
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unavailable with RSA."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUpdate([BII[BI)I
    .registers 8
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 416
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v0, v0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    if-eqz v0, :cond_23

    .line 418
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_39

    .line 420
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "too much data for RSA block"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_23
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v1

    if-le v0, v1, :cond_39

    .line 427
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "too much data for RSA block"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_39
    const/4 v0, 0x0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .registers 6
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 389
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v0, v0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    if-eqz v0, :cond_23

    .line 391
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_39

    .line 393
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "too much data for RSA block"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_23
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v1

    if-le v0, v1, :cond_39

    .line 400
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "too much data for RSA block"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_39
    const/4 v0, 0x0

    return-object v0
.end method
