.class public final Lcom/android/org/bouncycastle/util/BigIntegers;
.super Ljava/lang/Object;
.source "BigIntegers.java"


# static fields
.field private static final MAX_ITERATIONS:I = 0x3e8

.field private static final ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asUnsignedByteArray(Ljava/math/BigInteger;)[B
    .registers 6
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 25
    .local v0, bytes:[B
    aget-byte v2, v0, v3

    if-nez v2, :cond_14

    .line 27
    array-length v2, v0

    sub-int/2addr v2, v4

    new-array v1, v2, [B

    .line 29
    .local v1, tmp:[B
    array-length v2, v1

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    .line 34
    .end local v1           #tmp:[B
    :goto_13
    return-object v2

    :cond_14
    move-object v2, v0

    goto :goto_13
.end method

.method public static createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 9
    .parameter "min"
    .parameter "max"
    .parameter "random"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    .line 51
    .local v0, cmp:I
    if-ltz v0, :cond_12

    .line 53
    if-lez v0, :cond_10

    .line 55
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "\'min\' may not be greater than \'max\'"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_10
    move-object v3, p0

    .line 76
    :goto_11
    return-object v3

    .line 61
    :cond_12
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_2d

    .line 63
    sget-object v3, Lcom/android/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v3, v4, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_11

    .line 66
    :cond_2d
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_4c

    .line 68
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-direct {v2, v3, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 69
    .local v2, x:Ljava/math/BigInteger;
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_49

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_49

    move-object v3, v2

    .line 71
    goto :goto_11

    .line 66
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 76
    .end local v2           #x:Ljava/math/BigInteger;
    :cond_4c
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-direct {v3, v4, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_11
.end method
