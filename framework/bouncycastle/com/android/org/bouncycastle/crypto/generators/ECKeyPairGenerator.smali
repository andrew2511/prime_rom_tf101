.class public Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;
.super Ljava/lang/Object;
.source "ECKeyPairGenerator.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;
.implements Lcom/android/org/bouncycastle/math/ec/ECConstants;


# instance fields
.field params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .registers 9

    .prologue
    .line 37
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    .line 38
    .local v2, n:Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 43
    .local v3, nBitLength:I
    :cond_a
    new-instance v1, Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v3, v4}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 45
    .local v1, d:Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_a

    .line 47
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 49
    .local v0, Q:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v4, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v5, v0, v6}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    new-instance v6, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v6, v1, v7}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    invoke-direct {v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-object v4
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 5
    .parameter "param"

    .prologue
    .line 25
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    move-object v1, v0

    .line 27
    .local v1, ecP:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 28
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->getDomainParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 29
    return-void
.end method
