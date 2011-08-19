.class public Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;
.super Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;
.source "ECKeyGenerationParameters.java"


# instance fields
.field private domainParams:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V
    .registers 4
    .parameter "domainParams"
    .parameter "random"

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 18
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->domainParams:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 19
    return-void
.end method


# virtual methods
.method public getDomainParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->domainParams:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    return-object v0
.end method
