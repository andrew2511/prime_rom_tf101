.class public Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBKDF2WithHmacSHA1;
.super Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.source "JCESecretKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBKDF2WithHmacSHA1"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 635
    const-string v0, "PBKDF2WithHmacSHA1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 636
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
    .line 642
    instance-of v1, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v1, :cond_80

    .line 644
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEKeySpec;

    move-object v8, v0

    .line 646
    .local v8, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v1

    if-nez v1, :cond_16

    .line 648
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "missing required salt"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 651
    :cond_16
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v1

    if-gtz v1, :cond_39

    .line 653
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "positive iteration count required: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 657
    :cond_39
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v1

    if-gtz v1, :cond_5c

    .line 659
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "positive key length required: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 663
    :cond_5c
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_6b

    .line 665
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 668
    :cond_6b
    const/4 v4, 0x1

    .line 669
    .local v4, scheme:I
    const/4 v5, 0x1

    .line 670
    .local v5, digest:I
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v6

    .line 671
    .local v6, keySize:I
    const/4 v7, -0x1

    .line 672
    .local v7, ivSize:I
    invoke-static {v8, v4, v5, v6}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v9

    .line 674
    .local v9, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBKDF2WithHmacSHA1;->algName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBKDF2WithHmacSHA1;->algOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct/range {v1 .. v9}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-object v1

    .line 677
    .end local v4           #scheme:I
    .end local v5           #digest:I
    .end local v6           #keySize:I
    .end local v7           #ivSize:I
    .end local v8           #pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v9           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_80
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Invalid KeySpec"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
