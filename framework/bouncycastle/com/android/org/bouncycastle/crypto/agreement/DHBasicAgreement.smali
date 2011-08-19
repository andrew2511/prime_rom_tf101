.class public Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;
.super Ljava/lang/Object;
.source "DHBasicAgreement.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BasicAgreement;


# instance fields
.field private dhParams:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

.field private key:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateAgreement(Lcom/android/org/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .registers 7
    .parameter "pubKey"

    .prologue
    .line 57
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    move-object v1, v0

    .line 59
    .local v1, pub:Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 61
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Diffie-Hellman public key has wrong parameters."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_18
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 7
    .parameter "param"

    .prologue
    .line 31
    instance-of v3, p1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v3, :cond_1a

    .line 33
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    move-object v2, v0

    .line 34
    .local v2, rParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 41
    .end local v2           #rParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    .local v1, kParam:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :goto_e
    instance-of v3, v1, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    if-nez v3, :cond_1f

    .line 43
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "DHEngine expects DHPrivateKeyParameters"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 38
    .end local v1           #kParam:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_1a
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object v1, v0

    .restart local v1       #kParam:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_e

    .line 46
    :cond_1f
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .end local v1           #kParam:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 47
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    .line 48
    return-void
.end method
