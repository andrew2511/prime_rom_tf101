.class public Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHA1AndRC2;
.super Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;
.source "JCEBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHA1AndRC2"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 1153
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    .line 1154
    return-void
.end method
