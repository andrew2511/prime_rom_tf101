.class Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;
.super Ljava/lang/Object;
.source "DHKeyGeneratorHelper.java"


# static fields
.field static final INSTANCE:Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 11
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->INSTANCE:Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    .line 13
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->ONE:Ljava/math/BigInteger;

    .line 14
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method calculatePrivate(Lcom/android/org/bouncycastle/crypto/params/DHParameters;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 11
    .parameter "dhParams"
    .parameter "random"

    .prologue
    const/4 v7, 0x1

    .line 22
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v4

    .line 23
    .local v4, p:Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getL()I

    move-result v0

    .line 25
    .local v0, limit:I
    if-eqz v0, :cond_17

    .line 27
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v0, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    sub-int v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 44
    :goto_16
    return-object v6

    .line 30
    :cond_17
    sget-object v3, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->TWO:Ljava/math/BigInteger;

    .line 31
    .local v3, min:Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getM()I

    move-result v1

    .line 32
    .local v1, m:I
    if-eqz v1, :cond_27

    .line 34
    sget-object v6, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->ONE:Ljava/math/BigInteger;

    sub-int v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 37
    :cond_27
    sget-object v6, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 38
    .local v2, max:Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 39
    .local v5, q:Ljava/math/BigInteger;
    if-eqz v5, :cond_39

    .line 41
    sget-object v6, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 44
    :cond_39
    invoke-static {v3, v2, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_16
.end method

.method calculatePublic(Lcom/android/org/bouncycastle/crypto/params/DHParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 5
    .parameter "dhParams"
    .parameter "x"

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
