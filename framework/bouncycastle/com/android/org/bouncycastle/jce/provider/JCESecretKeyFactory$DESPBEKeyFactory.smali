.class public Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;
.super Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.source "JCESecretKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DESPBEKeyFactory"
.end annotation


# instance fields
.field private digest:I

.field private forCipher:Z

.field private ivSize:I

.field private keySize:I

.field private scheme:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;ZIIII)V
    .registers 8
    .parameter "algorithm"
    .parameter "oid"
    .parameter "forCipher"
    .parameter "scheme"
    .parameter "digest"
    .parameter "keySize"
    .parameter "ivSize"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 183
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->forCipher:Z

    .line 184
    iput p4, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->scheme:I

    .line 185
    iput p5, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->digest:I

    .line 186
    iput p6, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->keySize:I

    .line 187
    iput p7, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->ivSize:I

    .line 188
    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 14
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 194
    instance-of v1, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v1, :cond_6f

    .line 196
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEKeySpec;

    move-object v8, v0

    .line 199
    .local v8, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v1

    if-nez v1, :cond_21

    .line 201
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->algName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iget v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->scheme:I

    iget v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->digest:I

    iget v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->keySize:I

    iget v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->ivSize:I

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 226
    :goto_20
    return-object v1

    .line 204
    :cond_21
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->forCipher:Z

    if-eqz v1, :cond_58

    .line 206
    iget v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->scheme:I

    iget v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->digest:I

    iget v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->keySize:I

    iget v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->ivSize:I

    invoke-static {v8, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v9

    .line 213
    .local v9, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_31
    instance-of v1, v9, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_63

    .line 215
    move-object v0, v9

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 217
    .local v10, kParam:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 226
    :goto_46
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->algName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iget v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->scheme:I

    iget v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->digest:I

    iget v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->keySize:I

    iget v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->ivSize:I

    invoke-direct/range {v1 .. v9}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_20

    .line 210
    .end local v9           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .end local v10           #kParam:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :cond_58
    iget v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->scheme:I

    iget v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->digest:I

    iget v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->keySize:I

    invoke-static {v8, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v9

    .restart local v9       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_31

    .line 221
    :cond_63
    move-object v0, v9

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    move-object v10, v0

    .line 223
    .restart local v10       #kParam:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    goto :goto_46

    .line 229
    .end local v8           #pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v9           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .end local v10           #kParam:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :cond_6f
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Invalid KeySpec"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
