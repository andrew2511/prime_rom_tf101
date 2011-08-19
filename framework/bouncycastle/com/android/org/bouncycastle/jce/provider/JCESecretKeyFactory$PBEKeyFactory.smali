.class public Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;
.super Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.source "JCESecretKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEKeyFactory"
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
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 126
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->forCipher:Z

    .line 127
    iput p4, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->scheme:I

    .line 128
    iput p5, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->digest:I

    .line 129
    iput p6, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->keySize:I

    .line 130
    iput p7, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->ivSize:I

    .line 131
    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 12
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 137
    instance-of v1, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v1, :cond_4e

    .line 139
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEKeySpec;

    move-object v8, v0

    .line 142
    .local v8, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v1

    if-nez v1, :cond_21

    .line 144
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->algName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iget v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->scheme:I

    iget v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->digest:I

    iget v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->keySize:I

    iget v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->ivSize:I

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 156
    :goto_20
    return-object v1

    .line 147
    :cond_21
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->forCipher:Z

    if-eqz v1, :cond_43

    .line 149
    iget v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->scheme:I

    iget v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->digest:I

    iget v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->keySize:I

    iget v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->ivSize:I

    invoke-static {v8, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v9

    .line 156
    .local v9, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_31
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->algName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iget v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->scheme:I

    iget v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->digest:I

    iget v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->keySize:I

    iget v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->ivSize:I

    invoke-direct/range {v1 .. v9}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_20

    .line 153
    .end local v9           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_43
    iget v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->scheme:I

    iget v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->digest:I

    iget v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->keySize:I

    invoke-static {v8, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v9

    .restart local v9       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_31

    .line 159
    .end local v8           #pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v9           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_4e
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Invalid KeySpec"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
