.class public Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DES;
.super Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.source "JCESecretKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DES"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 238
    const-string v0, "DES"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 239
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
    .line 245
    instance-of v2, p1, Ljavax/crypto/spec/DESKeySpec;

    if-eqz v2, :cond_14

    .line 247
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/DESKeySpec;

    move-object v1, v0

    .line 248
    .local v1, desKeySpec:Ljavax/crypto/spec/DESKeySpec;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/DESKeySpec;->getKey()[B

    move-result-object v3

    const-string v4, "DES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 251
    .end local v1           #desKeySpec:Ljavax/crypto/spec/DESKeySpec;
    :goto_13
    return-object v2

    :cond_14
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    goto :goto_13
.end method
