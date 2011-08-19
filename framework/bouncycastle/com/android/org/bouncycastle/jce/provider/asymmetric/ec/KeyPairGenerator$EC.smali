.class public Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;
.super Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EC"
.end annotation


# static fields
.field private static ecParameters:Ljava/util/Hashtable;


# instance fields
.field algorithm:Ljava/lang/String;

.field certainty:I

.field ecParams:Ljava/lang/Object;

.field engine:Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

.field initialised:Z

.field param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 61
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    .line 63
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xc0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime192v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xef

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime239v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime256v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xe0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-224"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x180

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-384"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x209

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-521"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 74
    const-string v0, "EC"

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->engine:Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    .line 52
    const/16 v0, 0xef

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->strength:I

    .line 53
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->certainty:I

    .line 54
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->random:Ljava/security/SecureRandom;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialised:Z

    .line 75
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "algorithm"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->engine:Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    .line 52
    const/16 v0, 0xef

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->strength:I

    .line 53
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->certainty:I

    .line 54
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->random:Ljava/security/SecureRandom;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialised:Z

    .line 82
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 10

    .prologue
    .line 261
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialised:Z

    if-nez v5, :cond_b

    .line 270
    const/16 v5, 0xc0

    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->random:Ljava/security/SecureRandom;

    invoke-virtual {p0, v5, v6}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialize(ILjava/security/SecureRandom;)V

    .line 274
    :cond_b
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->engine:Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    .line 275
    .local v1, pair:Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 276
    .local v3, pub:Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 278
    .local v2, priv:Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    instance-of v5, v5, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    if-eqz v5, :cond_3b

    .line 280
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    check-cast v0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 282
    .local v0, p:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    invoke-direct {v4, v5, v3, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V

    .line 283
    .local v4, pubKey:Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;
    new-instance v5, Ljava/security/KeyPair;

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    invoke-direct {v6, v7, v2, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V

    invoke-direct {v5, v4, v6}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    .line 297
    .end local v0           #p:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .end local v4           #pubKey:Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;
    :goto_3a
    return-object v5

    .line 286
    :cond_3b
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    if-nez v5, :cond_53

    .line 288
    new-instance v5, Ljava/security/KeyPair;

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    invoke-direct {v6, v7, v3}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;)V

    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    iget-object v8, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    invoke-direct {v7, v8, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;)V

    invoke-direct {v5, v6, v7}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    goto :goto_3a

    .line 293
    :cond_53
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    .line 295
    .local v0, p:Ljava/security/spec/ECParameterSpec;
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    invoke-direct {v4, v5, v3, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;Ljava/security/spec/ECParameterSpec;)V

    .line 297
    .restart local v4       #pubKey:Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;
    new-instance v5, Ljava/security/KeyPair;

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    invoke-direct {v6, v7, v2, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;Ljava/security/spec/ECParameterSpec;)V

    invoke-direct {v5, v4, v6}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    goto :goto_3a
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 6
    .parameter "strength"
    .parameter "random"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->strength:I

    .line 91
    if-eqz p2, :cond_6

    .line 93
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->random:Ljava/security/SecureRandom;

    .line 97
    :cond_6
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    if-eqz v1, :cond_29

    .line 103
    :try_start_17
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    check-cast v1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p0, v1, p2}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_1e
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_17 .. :try_end_1e} :catch_1f

    .line 114
    return-void

    .line 105
    :catch_1f
    move-exception v1

    move-object v0, v1

    .line 107
    .local v0, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "key size not configurable."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    .end local v0           #e:Ljava/security/InvalidAlgorithmParameterException;
    :cond_29
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "unknown key size."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 19
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 122
    if-nez p2, :cond_8

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->random:Ljava/security/SecureRandom;

    move-object/from16 p2, v0

    .line 126
    :cond_8
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move v3, v0

    if-eqz v3, :cond_4d

    .line 128
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-object v15, v0

    .line 129
    .local v15, p:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    .line 131
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->engine:Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 134
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialised:Z

    .line 257
    .end local v15           #p:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .end local p1
    :goto_4c
    return-void

    .line 136
    .restart local p1
    :cond_4d
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/spec/ECParameterSpec;

    move v3, v0

    if-eqz v3, :cond_a4

    .line 138
    move-object/from16 v0, p1

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    move-object v15, v0

    .line 139
    .local v15, p:Ljava/security/spec/ECParameterSpec;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    .line 141
    invoke-virtual {v15}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v10

    .line 142
    .local v10, curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v15}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v10, v3, v4}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    .line 144
    .local v13, g:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v15}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v15}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v4, v10, v13, v5, v6}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->engine:Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 147
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialised:Z

    goto :goto_4c

    .line 149
    .end local v10           #curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .end local v13           #g:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v15           #p:Ljava/security/spec/ECParameterSpec;
    :cond_a4
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/spec/ECGenParameterSpec;

    move v3, v0

    if-eqz v3, :cond_176

    .line 151
    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, curveName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v11

    .line 174
    .local v11, ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v11, :cond_10e

    .line 176
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v11

    .line 177
    if-nez v11, :cond_c1

    .line 179
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v11

    .line 187
    :cond_c1
    if-nez v11, :cond_10e

    .line 192
    :try_start_c3
    new-instance v14, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v14, v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 193
    .local v14, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-static {v14}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v11

    .line 194
    if-nez v11, :cond_d2

    .line 196
    invoke-static {v14}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v11

    .line 198
    :cond_d2
    if-nez v11, :cond_d8

    .line 200
    invoke-static {v14}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v11

    .line 208
    :cond_d8
    if-nez v11, :cond_10e

    .line 210
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown curve OID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_f3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c3 .. :try_end_f3} :catch_f3

    .line 213
    .end local v14           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :catch_f3
    move-exception v3

    move-object v12, v3

    .line 215
    .local v12, ex:Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown curve name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .end local v4           #curveName:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 220
    .end local v12           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v4       #curveName:Ljava/lang/String;
    :cond_10e
    new-instance v3, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/security/spec/ECParameterSpec;

    .line 231
    .restart local v15       #p:Ljava/security/spec/ECParameterSpec;
    invoke-virtual {v15}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v10

    .line 232
    .restart local v10       #curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v15}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v10, v3, v4}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .end local v4           #curveName:Ljava/lang/String;
    move-result-object v13

    .line 234
    .restart local v13       #g:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v15}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v15}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v4, v10, v13, v5, v6}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->engine:Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 237
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialised:Z

    goto/16 :goto_4c

    .line 239
    .end local v10           #curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .end local v11           #ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v13           #g:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v15           #p:Ljava/security/spec/ECParameterSpec;
    .restart local p1
    :cond_176
    if-nez p1, :cond_1bc

    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    if-eqz v3, :cond_1bc

    .line 241
    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v15

    .line 242
    .local v15, p:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    .line 244
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->engine:Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 247
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialised:Z

    goto/16 :goto_4c

    .line 249
    .end local v15           #p:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_1bc
    if-nez p1, :cond_1cc

    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    if-nez v3, :cond_1cc

    .line 251
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string v4, "null parameter passed but no implicitCA set"

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 255
    :cond_1cc
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string v4, "parameter object not a ECParameterSpec"

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
