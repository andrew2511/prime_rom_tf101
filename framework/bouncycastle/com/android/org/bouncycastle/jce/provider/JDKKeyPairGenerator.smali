.class public abstract Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator;
.super Ljava/security/KeyPairGenerator;
.source "JDKKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;,
        Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;,
        Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "algorithmName"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method public abstract generateKeyPair()Ljava/security/KeyPair;
.end method

.method public abstract initialize(ILjava/security/SecureRandom;)V
.end method
