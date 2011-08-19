.class public Lcom/android/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;
.super Ljava/lang/Object;
.source "ECDHBasicAgreement.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BasicAgreement;


# instance fields
.field private key:Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateAgreement(Lcom/android/org/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .registers 7
    .parameter "pubKey"

    .prologue
    .line 40
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-object v2, v0

    .line 41
    .local v2, pub:Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 45
    .local v1, P:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    return-object v3
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 2
    .parameter "key"

    .prologue
    .line 34
    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .end local p1
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 35
    return-void
.end method
