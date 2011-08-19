.class public Lcom/android/org/bouncycastle/jce/provider/JCEMac;
.super Ljavax/crypto/MacSpi;
.source "JCEMac.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/provider/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JCEMac$PBEWithSHA;,
        Lcom/android/org/bouncycastle/jce/provider/JCEMac$SHA512;,
        Lcom/android/org/bouncycastle/jce/provider/JCEMac$SHA384;,
        Lcom/android/org/bouncycastle/jce/provider/JCEMac$SHA256;,
        Lcom/android/org/bouncycastle/jce/provider/JCEMac$SHA1;,
        Lcom/android/org/bouncycastle/jce/provider/JCEMac$MD5;
    }
.end annotation


# instance fields
.field private keySize:I

.field private macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

.field private pbeHash:I

.field private pbeType:I


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Mac;)V
    .registers 3
    .parameter "macEngine"

    .prologue
    .line 65
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->pbeType:I

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->pbeHash:I

    .line 61
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->keySize:I

    .line 66
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    .line 67
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Mac;III)V
    .registers 6
    .parameter "macEngine"
    .parameter "pbeType"
    .parameter "pbeHash"
    .parameter "keySize"

    .prologue
    .line 74
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->pbeType:I

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->pbeHash:I

    .line 61
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->keySize:I

    .line 75
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    .line 76
    iput p2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->pbeType:I

    .line 77
    iput p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->pbeHash:I

    .line 78
    iput p4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->keySize:I

    .line 79
    return-void
.end method


# virtual methods
.method protected engineDoFinal()[B
    .registers 4

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->engineGetMacLength()I

    move-result v1

    new-array v0, v1, [B

    .line 154
    .local v0, out:[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 156
    return-object v0
.end method

.method protected engineGetMacLength()I
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 8
    .parameter "key"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 88
    if-nez p1, :cond_a

    .line 90
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "key is null"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 93
    :cond_a
    instance-of v3, p1, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    if-eqz v3, :cond_33

    .line 95
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    move-object v1, v0

    .line 97
    .local v1, k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 99
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .line 123
    .end local v1           #k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    .end local p2
    .local v2, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_1c
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v3, v2}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 124
    return-void

    .line 101
    .end local v2           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v1       #k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    .restart local p2
    :cond_22
    instance-of v3, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v3, :cond_2b

    .line 103
    invoke-static {v1, p2}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEMacParameters(Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .restart local v2       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_1c

    .line 107
    .end local v2           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_2b
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string v4, "PBE requires PBE parameters to be set."

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 110
    .end local v1           #k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    :cond_33
    instance-of v3, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v3, :cond_4c

    .line 112
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    .end local p2
    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .restart local v2       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_1c

    .line 114
    .end local v2           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p2
    :cond_4c
    if-nez p2, :cond_58

    .line 116
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v2       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_1c

    .line 120
    .end local v2           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_58
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string v4, "unknown parameter type."

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineReset()V
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->reset()V

    .line 134
    return-void
.end method

.method protected engineUpdate(B)V
    .registers 3
    .parameter "input"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 140
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 5
    .parameter "input"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 148
    return-void
.end method
