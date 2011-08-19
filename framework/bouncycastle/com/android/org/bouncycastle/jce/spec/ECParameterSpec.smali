.class public Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
.super Ljava/lang/Object;
.source "ECParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field private curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field private h:Ljava/math/BigInteger;

.field private n:Ljava/math/BigInteger;

.field private seed:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .registers 6
    .parameter "curve"
    .parameter "G"
    .parameter "n"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 27
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 28
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    .line 29
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->h:Ljava/math/BigInteger;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->seed:[B

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 6
    .parameter "curve"
    .parameter "G"
    .parameter "n"
    .parameter "h"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 40
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 41
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    .line 42
    iput-object p4, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->h:Ljava/math/BigInteger;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->seed:[B

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 6
    .parameter "curve"
    .parameter "G"
    .parameter "n"
    .parameter "h"
    .parameter "seed"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 54
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 55
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    .line 56
    iput-object p4, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->h:Ljava/math/BigInteger;

    .line 57
    iput-object p5, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->seed:[B

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 107
    instance-of v2, p1, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    if-nez v2, :cond_7

    move v2, v4

    .line 114
    :goto_6
    return v2

    .line 112
    :cond_7
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-object v1, v0

    .line 114
    .local v1, other:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    goto :goto_6

    :cond_29
    move v2, v4

    goto :goto_6
.end method

.method public getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getH()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSeed()[B
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->seed:[B

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
