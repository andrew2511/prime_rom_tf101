.class public Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;
.source "RSAPrivateCrtKeyParameters.java"


# instance fields
.field private dP:Ljava/math/BigInteger;

.field private dQ:Ljava/math/BigInteger;

.field private e:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private qInv:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 10
    .parameter "modulus"
    .parameter "publicExponent"
    .parameter "privateExponent"
    .parameter "p"
    .parameter "q"
    .parameter "dP"
    .parameter "dQ"
    .parameter "qInv"

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p3}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 30
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->e:Ljava/math/BigInteger;

    .line 31
    iput-object p4, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->p:Ljava/math/BigInteger;

    .line 32
    iput-object p5, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->q:Ljava/math/BigInteger;

    .line 33
    iput-object p6, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->dP:Ljava/math/BigInteger;

    .line 34
    iput-object p7, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->dQ:Ljava/math/BigInteger;

    .line 35
    iput-object p8, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->qInv:Ljava/math/BigInteger;

    .line 36
    return-void
.end method


# virtual methods
.method public getDP()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->dP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getDQ()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->dQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->e:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQInv()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->qInv:Ljava/math/BigInteger;

    return-object v0
.end method
