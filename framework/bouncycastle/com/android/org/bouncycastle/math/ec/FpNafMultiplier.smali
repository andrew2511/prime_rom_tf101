.class Lcom/android/org/bouncycastle/math/ec/FpNafMultiplier;
.super Ljava/lang/Object;
.source "FpNafMultiplier.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/ECMultiplier;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public multiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 13
    .parameter "p"
    .parameter "k"
    .parameter "preCompInfo"

    .prologue
    .line 18
    move-object v1, p2

    .line 19
    .local v1, e:Ljava/math/BigInteger;
    const-wide/16 v7, 0x3

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 21
    .local v3, h:Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 22
    .local v6, neg:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object v0, p1

    .line 24
    .local v0, R:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/4 v8, 0x2

    sub-int v5, v7, v8

    .local v5, i:I
    :goto_17
    if-lez v5, :cond_33

    .line 26
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 28
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    .line 29
    .local v4, hBit:Z
    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    .line 31
    .local v2, eBit:Z
    if-eq v4, v2, :cond_2e

    .line 33
    if-eqz v4, :cond_31

    move-object v7, p1

    :goto_2a
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 24
    :cond_2e
    add-int/lit8 v5, v5, -0x1

    goto :goto_17

    :cond_31
    move-object v7, v6

    .line 33
    goto :goto_2a

    .line 37
    .end local v2           #eBit:Z
    .end local v4           #hBit:Z
    :cond_33
    return-object v0
.end method
