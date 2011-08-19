.class public Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;
.super Ljava/lang/Object;
.source "RSAKeyPairGenerator.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .registers 18

    .prologue
    .line 35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getStrength()I

    move-result v16

    .line 36
    .local v16, strength:I
    add-int/lit8 v1, v16, 0x1

    div-int/lit8 v12, v1, 0x2

    .line 37
    .local v12, pbitlength:I
    sub-int v15, v16, v12

    .line 38
    .local v15, qbitlength:I
    div-int/lit8 v10, v16, 0x3

    .line 40
    .local v10, mindiffbits:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    .line 50
    .local v3, e:Ljava/math/BigInteger;
    :cond_1a
    new-instance v5, Ljava/math/BigInteger;

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v5, v12, v1, v2}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    .line 52
    .local v5, p:Ljava/math/BigInteger;
    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getCertainty()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 62
    sget-object v1, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 78
    :cond_56
    :goto_56
    new-instance v6, Ljava/math/BigInteger;

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v6, v15, v1, v2}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    .line 80
    .local v6, q:Ljava/math/BigInteger;
    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    if-lt v1, v10, :cond_56

    .line 85
    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getCertainty()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 95
    sget-object v1, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 104
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 106
    .local v2, n:Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getStrength()I

    move-result v4

    if-ne v1, v4, :cond_ed

    .line 118
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_bc

    .line 120
    move-object v13, v5

    .line 121
    .local v13, phi:Ljava/math/BigInteger;
    move-object v5, v6

    .line 122
    move-object v6, v13

    .line 125
    .end local v13           #phi:Ljava/math/BigInteger;
    :cond_bc
    sget-object v1, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 126
    .local v11, pSub1:Ljava/math/BigInteger;
    sget-object v1, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 127
    .local v14, qSub1:Ljava/math/BigInteger;
    invoke-virtual {v11, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 132
    .restart local v13       #phi:Ljava/math/BigInteger;
    invoke-virtual {v3, v13}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 139
    .local v4, d:Ljava/math/BigInteger;
    invoke-virtual {v4, v11}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 140
    .local v7, dP:Ljava/math/BigInteger;
    invoke-virtual {v4, v14}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 141
    .local v8, dQ:Ljava/math/BigInteger;
    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 143
    .local v9, qInv:Ljava/math/BigInteger;
    new-instance v10, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    .end local v10           #mindiffbits:I
    new-instance v11, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    .end local v11           #pSub1:Ljava/math/BigInteger;
    const/4 v1, 0x0

    invoke-direct {v11, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-direct/range {v1 .. v9}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v10, v11, v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-object v10

    .line 115
    .end local v4           #d:Ljava/math/BigInteger;
    .end local v7           #dP:Ljava/math/BigInteger;
    .end local v8           #dQ:Ljava/math/BigInteger;
    .end local v9           #qInv:Ljava/math/BigInteger;
    .end local v13           #phi:Ljava/math/BigInteger;
    .end local v14           #qSub1:Ljava/math/BigInteger;
    .restart local v10       #mindiffbits:I
    :cond_ed
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    goto/16 :goto_56
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 2
    .parameter "param"

    .prologue
    .line 25
    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    .end local p1
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    .line 26
    return-void
.end method
