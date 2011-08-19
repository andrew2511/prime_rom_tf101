.class public Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESede;
.super Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.source "JCESecretKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DESede"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 260
    const-string v0, "DESede"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 261
    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 7
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 314
    instance-of v2, p1, Ljavax/crypto/spec/DESedeKeySpec;

    if-eqz v2, :cond_14

    .line 316
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/DESedeKeySpec;

    move-object v1, v0

    .line 317
    .local v1, desKeySpec:Ljavax/crypto/spec/DESedeKeySpec;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/DESedeKeySpec;->getKey()[B

    move-result-object v3

    const-string v4, "DESede"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 320
    .end local v1           #desKeySpec:Ljavax/crypto/spec/DESedeKeySpec;
    :goto_13
    return-object v2

    :cond_14
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    goto :goto_13
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 9
    .parameter "key"
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x10

    .line 268
    if-nez p2, :cond_c

    .line 270
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "keySpec parameter is null"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 272
    :cond_c
    if-nez p1, :cond_16

    .line 274
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "key parameter is null"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 277
    :cond_16
    const-class v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 279
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESede;->algName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 298
    :goto_29
    return-object v3

    .line 281
    :cond_2a
    const-class v3, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 283
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 287
    .local v0, bytes:[B
    :try_start_36
    array-length v3, v0

    if-ne v3, v4, :cond_5e

    .line 289
    const/16 v3, 0x18

    new-array v2, v3, [B

    .line 291
    .local v2, longKey:[B
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v5, 0x8

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    new-instance v3, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_51} :catch_52

    goto :goto_29

    .line 301
    .end local v2           #longKey:[B
    :catch_52
    move-exception v3

    move-object v1, v3

    .line 303
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 298
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5e
    :try_start_5e
    new-instance v3, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v3, v0}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_63} :catch_52

    goto :goto_29

    .line 307
    .end local v0           #bytes:[B
    :cond_64
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "Invalid KeySpec"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
