.class public Lcom/android/org/bouncycastle/jce/provider/JCEMac$SHA384;
.super Lcom/android/org/bouncycastle/jce/provider/JCEMac;
.source "JCEMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCEMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHA384"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 440
    new-instance v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEMac;-><init>(Lcom/android/org/bouncycastle/crypto/Mac;)V

    .line 441
    return-void
.end method
