.class public Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;
.super Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;
.source "DHKeyGenerationParameters.java"


# instance fields
.field private params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V
    .registers 4
    .parameter "random"
    .parameter "params"

    .prologue
    .line 16
    invoke-static {p2}, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;->getStrength(Lcom/android/org/bouncycastle/crypto/params/DHParameters;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 18
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    .line 19
    return-void
.end method

.method static getStrength(Lcom/android/org/bouncycastle/crypto/params/DHParameters;)I
    .registers 2
    .parameter "params"

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getL()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getL()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    goto :goto_a
.end method


# virtual methods
.method public getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    return-object v0
.end method
