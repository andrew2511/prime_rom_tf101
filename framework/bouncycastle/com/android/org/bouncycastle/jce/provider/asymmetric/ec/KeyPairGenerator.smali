.class public abstract Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator;
.super Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECMQV;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECDHC;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECDH;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECDSA;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "algorithmName"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method
