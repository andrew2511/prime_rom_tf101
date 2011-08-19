.class public Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher$RC4;
.super Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;
.source "JCEStreamCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RC4"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 515
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;-><init>(Lcom/android/org/bouncycastle/crypto/StreamCipher;I)V

    .line 516
    return-void
.end method
