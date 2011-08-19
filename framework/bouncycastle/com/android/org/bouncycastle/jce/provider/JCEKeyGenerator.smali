.class public Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "JCEKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA512;,
        Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA384;,
        Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA256;,
        Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA1;,
        Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator$MD5HMAC;,
        Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator$RC4;,
        Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator$Blowfish;,
        Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator$DESede;,
        Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator$DES;
    }
.end annotation


# instance fields
.field protected algName:Ljava/lang/String;

.field protected defaultKeySize:I

.field protected engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

.field protected keySize:I

.field protected uninitialised:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILcom/android/org/bouncycastle/crypto/CipherKeyGenerator;)V
    .registers 5
    .parameter "algName"
    .parameter "defaultKeySize"
    .parameter "engine"

    .prologue
    .line 30
    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    .line 31
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->algName:Ljava/lang/String;

    .line 32
    iput p2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->defaultKeySize:I

    iput p2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->keySize:I

    .line 33
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    .line 34
    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .registers 5

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    if-eqz v0, :cond_18

    .line 78
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iget v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->defaultKeySize:I

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    .line 82
    :cond_18
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->algName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .registers 7
    .parameter "keySize"
    .parameter "random"

    .prologue
    .line 61
    if-nez p2, :cond_8

    .line 62
    :try_start_2
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .end local p2
    .local v1, random:Ljava/security/SecureRandom;
    move-object p2, v1

    .line 65
    .end local v1           #random:Ljava/security/SecureRandom;
    .restart local p2
    :cond_8
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    invoke-direct {v3, p2, p1}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 66
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_15} :catch_16

    .line 72
    return-void

    .line 68
    :catch_16
    move-exception v2

    move-object v0, v2

    .line 70
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .registers 5
    .parameter "random"

    .prologue
    .line 47
    if-eqz p1, :cond_11

    .line 49
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    iget v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->defaultKeySize:I

    invoke-direct {v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    .line 52
    :cond_11
    return-void
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 5
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Not Implemented"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
