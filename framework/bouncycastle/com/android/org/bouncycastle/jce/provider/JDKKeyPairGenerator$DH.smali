.class public Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;
.super Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator;
.source "JDKKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DH"
.end annotation


# static fields
.field private static params:Ljava/util/Hashtable;


# instance fields
.field certainty:I

.field engine:Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

.field initialised:Z

.field param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 129
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->params:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 140
    const-string v0, "DH"

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->engine:Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    .line 133
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->strength:I

    .line 134
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->certainty:I

    .line 135
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->random:Ljava/security/SecureRandom;

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->initialised:Z

    .line 141
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 9

    .prologue
    .line 170
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->initialised:Z

    if-nez v5, :cond_26

    .line 173
    iget v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->strength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 176
    .local v2, paramStrength:Ljava/lang/Integer;
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->params:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 178
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->params:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    .line 191
    :goto_1c
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->engine:Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 193
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->initialised:Z

    .line 196
    .end local v2           #paramStrength:Ljava/lang/Integer;
    :cond_26
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->engine:Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    .line 197
    .local v1, pair:Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 198
    .local v4, pub:Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 200
    .local v3, priv:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;
    new-instance v5, Ljava/security/KeyPair;

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;

    invoke-direct {v6, v4}, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;)V

    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;

    invoke-direct {v7, v3}, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;)V

    invoke-direct {v5, v6, v7}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v5

    .line 182
    .end local v1           #pair:Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .end local v3           #priv:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;
    .end local v4           #pub:Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;
    .restart local v2       #paramStrength:Ljava/lang/Integer;
    :cond_48
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;-><init>()V

    .line 184
    .local v0, pGen:Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;
    iget v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->strength:I

    iget v6, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->certainty:I

    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 186
    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->generateParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    .line 188
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->params:Ljava/util/Hashtable;

    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v5, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 3
    .parameter "strength"
    .parameter "random"

    .prologue
    .line 147
    iput p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->strength:I

    .line 148
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->random:Ljava/security/SecureRandom;

    .line 149
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 11
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 156
    instance-of v2, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v2, :cond_c

    .line 158
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "parameter object not a DHParameterSpec"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_c
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    move-object v1, v0

    .line 162
    .local v1, dhParams:Ljavax/crypto/spec/DHParameterSpec;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v2, p2, v3}, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    .line 164
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->engine:Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 165
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->initialised:Z

    .line 166
    return-void
.end method
