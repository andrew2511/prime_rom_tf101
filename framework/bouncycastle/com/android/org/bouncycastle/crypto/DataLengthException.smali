.class public Lcom/android/org/bouncycastle/crypto/DataLengthException;
.super Lcom/android/org/bouncycastle/crypto/RuntimeCryptoException;
.source "DataLengthException.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/RuntimeCryptoException;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/RuntimeCryptoException;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method
