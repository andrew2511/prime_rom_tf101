.class public Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory$DSA;
.super Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;
.source "JDKKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;-><init>()V

    .line 451
    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 3
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 457
    instance-of v0, p1, Ljava/security/spec/DSAPrivateKeySpec;

    if-eqz v0, :cond_c

    .line 459
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;

    check-cast p1, Ljava/security/spec/DSAPrivateKeySpec;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;-><init>(Ljava/security/spec/DSAPrivateKeySpec;)V

    .line 462
    :goto_b
    return-object v0

    .restart local p1
    :cond_c
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    goto :goto_b
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 3
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 469
    instance-of v0, p1, Ljava/security/spec/DSAPublicKeySpec;

    if-eqz v0, :cond_c

    .line 471
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;

    check-cast p1, Ljava/security/spec/DSAPublicKeySpec;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;-><init>(Ljava/security/spec/DSAPublicKeySpec;)V

    .line 474
    :goto_b
    return-object v0

    .restart local p1
    :cond_c
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_b
.end method
