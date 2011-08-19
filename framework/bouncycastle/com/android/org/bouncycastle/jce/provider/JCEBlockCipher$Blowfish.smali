.class public Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$Blowfish;
.super Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;
.source "JCEBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blowfish"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 873
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/BlowfishEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/BlowfishEngine;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    .line 874
    return-void
.end method
