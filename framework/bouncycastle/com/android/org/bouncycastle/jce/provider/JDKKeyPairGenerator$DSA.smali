.class public Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;
.super Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator;
.source "JDKKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DSA"
.end annotation


# instance fields
.field certainty:I

.field engine:Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

.field initialised:Z

.field param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 217
    const-string v0, "DSA"

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 209
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->engine:Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    .line 210
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->strength:I

    .line 211
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->certainty:I

    .line 212
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->random:Ljava/security/SecureRandom;

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->initialised:Z

    .line 218
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 8

    .prologue
    .line 252
    iget-boolean v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->initialised:Z

    if-nez v4, :cond_29

    .line 254
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>()V

    .line 256
    .local v0, pGen:Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    iget v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->strength:I

    iget v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->certainty:I

    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 257
    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    .line 258
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->engine:Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 259
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->initialised:Z

    .line 262
    .end local v0           #pGen:Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    :cond_29
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->engine:Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    .line 263
    .local v1, pair:Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    .line 264
    .local v3, pub:Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    .line 266
    .local v2, priv:Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;
    new-instance v4, Ljava/security/KeyPair;

    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;

    invoke-direct {v5, v3}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;)V

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;

    invoke-direct {v6, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;)V

    invoke-direct {v4, v5, v6}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v4
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 5
    .parameter "strength"
    .parameter "random"

    .prologue
    .line 224
    const/16 v0, 0x200

    if-lt p1, v0, :cond_c

    const/16 v0, 0x400

    if-gt p1, v0, :cond_c

    rem-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_14

    .line 226
    :cond_c
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "strength must be from 512 - 1024 and a multiple of 64"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_14
    iput p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->strength:I

    .line 230
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->random:Ljava/security/SecureRandom;

    .line 231
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 10
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 238
    instance-of v2, p1, Ljava/security/spec/DSAParameterSpec;

    if-nez v2, :cond_c

    .line 240
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "parameter object not a DSAParameterSpec"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 242
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/security/spec/DSAParameterSpec;

    move-object v1, v0

    .line 244
    .local v1, dsaParams:Ljava/security/spec/DSAParameterSpec;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual {v1}, Ljava/security/spec/DSAParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/spec/DSAParameterSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Ljava/security/spec/DSAParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, p2, v3}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    .line 246
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->engine:Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 247
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->initialised:Z

    .line 248
    return-void
.end method
