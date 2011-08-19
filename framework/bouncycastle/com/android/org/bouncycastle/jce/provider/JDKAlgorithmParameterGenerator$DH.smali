.class public Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;
.super Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;
.source "JDKAlgorithmParameterGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DH"
.end annotation


# instance fields
.field private l:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;->l:I

    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .registers 9

    .prologue
    const/16 v6, 0x14

    .line 69
    new-instance v2, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;-><init>()V

    .line 71
    .local v2, pGen:Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;->random:Ljava/security/SecureRandom;

    if-eqz v4, :cond_31

    .line 73
    iget v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;->strength:I

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v4, v6, v5}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 80
    :goto_12
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->generateParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    .line 86
    .local v1, p:Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    :try_start_16
    const-string v4, "DH"

    const-string v5, "BC"

    invoke-static {v4, v5}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 87
    .local v3, params:Ljava/security/AlgorithmParameters;
    new-instance v4, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v6

    iget v7, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;->l:I

    invoke-direct {v4, v5, v6, v7}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v3, v4}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_30} :catch_3c

    .line 94
    return-object v3

    .line 77
    .end local v1           #p:Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .end local v3           #params:Ljava/security/AlgorithmParameters;
    :cond_31
    iget v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;->strength:I

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v4, v6, v5}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->init(IILjava/security/SecureRandom;)V

    goto :goto_12

    .line 89
    .restart local v1       #p:Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    :catch_3c
    move-exception v4

    move-object v0, v4

    .line 91
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 7
    .parameter "genParamSpec"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 56
    instance-of v2, p1, Ljavax/crypto/spec/DHGenParameterSpec;

    if-nez v2, :cond_c

    .line 58
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "DH parameter generator requires a DHGenParameterSpec for initialisation"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_c
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/DHGenParameterSpec;

    move-object v1, v0

    .line 62
    .local v1, spec:Ljavax/crypto/spec/DHGenParameterSpec;
    invoke-virtual {v1}, Ljavax/crypto/spec/DHGenParameterSpec;->getPrimeSize()I

    move-result v2

    iput v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;->strength:I

    .line 63
    invoke-virtual {v1}, Ljavax/crypto/spec/DHGenParameterSpec;->getExponentSize()I

    move-result v2

    iput v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;->l:I

    .line 64
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;->random:Ljava/security/SecureRandom;

    .line 65
    return-void
.end method
